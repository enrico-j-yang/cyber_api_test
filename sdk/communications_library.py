# -*- coding: utf-8 -*-
'''
iFlyOS通信库
'''

import sys
import time

import cgi
import datetime
import io
import json
import logging
import requests
import threading
import uuid
from requests import Request

try:
    import Queue as queue
except ImportError:
    import queue

import hyper

from global_variables import *
import sdk.configurate
from sdk.auth import TOKEN_URL

from sdk.directive_sequencer_library import DirectiveSequencer

logger = logging.getLogger(__name__)


class iFlyOSStateListner(object):
    '''
    iFlyOS状态监听类
    '''

    def __init__(self):
        pass

    def on_finished(self):
        '''
        处理结束状态回调
        :return:
        '''
        logging.info('[iFlyOS状态]结束')

    def on_speaking(self):
        '''
        播放状态回调
        :return:
        '''
        logging.info('[iFlyOS状态]正在播放........')

    def on_thinking(self):
        '''
        语义理解状态回调
        :return:
        '''
        logging.info('[iFlyOS状态]正在思考.........')

    def on_listening(self):
        '''
        监听状态回调
        :return:
        '''
        logging.info('[iFlyOS状态]正在倾听..........')


class iFlyOS(object):
    '''
    iFlyOS核心模块类，实现功能包括:
        录音数据上传
        本地状态上报
        长链接建立与维护(Ping)
        Directive下发
    '''

    def __init__(self, player):
        '''
        类初始化
        :param player:播放器
        '''
        self.event_queue = queue.Queue()
        self.down_channel_result_queue = queue.Queue()
        self.event_channel_result_queue = queue.Queue()

        self.state_listener = iFlyOSStateListner()

        # self.unpardsed_directive and self.error must initialized before self.directive_sequencer
        # because directive sequencer constructor uses them
        self.unparsed_directive = None
        self.error = {'type': '', 'message': ''}

        self.directive_sequencer = DirectiveSequencer(player, self)
        self.put = self.directive_sequencer.put

        self.done = True

        self.requests = requests.Session()

        self._configfile = sdk.configurate.DEFAULT_CONFIG_FILE


        self.last_activity = datetime.datetime.utcnow()

        self.__ping_time = None

        self._event = threading.Event()

        self._t = None

        if GATEWAY_TEST == "True":
            self._is_gate_way_test = True
        else:
            self._is_gate_way_test = False

        if self._is_gate_way_test:
            self._ses = requests.Session()
            # ping every 5 minutes (60 seconds early for latency) to maintain the connection
            self.__ping_time = datetime.datetime.utcnow() + datetime.timedelta(seconds=240)

        self._no_boundary = False
        self._inconformity_boundary = False

        if callable(self.directive_sequencer.directive_listener):
            self.directive_listener = self.directive_sequencer.directive_listener
        else:
            raise ValueError('directive监听器注册失败[参数不可回调]！')

        self.down_channel_event = threading.Event()

    def start(self):
        '''
        iFlyOS模块启动
        :return:
        '''
        self.done = False

        if self._is_gate_way_test:
            self._t = threading.Thread(target=self.run_h1)
            self._t.daemon = True
            self._t.start()
        else:
            self._t = threading.Thread(target=self.run)
            self._t.daemon = True
            self._t.start()

    def stop(self):
        '''
        iFlyOS模块停止
        :return:
        '''
        if not self.done:
            self.done = True
            self._t.join()

    def listen(self):
        '''
        iFlyOS进入语音识别状态
        :return:
        '''
        self.directive_sequencer.recognize()

    def send_event(self, event, listener=None, attachment=None):
        '''
        状态上报
        :param event:上传状态
        :param listener:VAD检测回调[云端识别语音输入结束]
        :param attachment:录音数据
        :return:
        '''
        self.event_queue.put((event, listener, attachment))
        logging.debug("event_queue len:" + str(self.event_queue._qsize()))

    def set_last_activity(self, timestamp_in_seconds):
        self.last_activity = datetime.datetime.utcnow() - datetime.timedelta(seconds=timestamp_in_seconds)

    def set_no_boundary(self):
        self._no_boundary = True

    def set_inconformity_boundary(self):
        self._inconformity_boundary = True

    def run(self):
        '''
        iFlyOS线程实体
        :return:
        '''
        while not self.done:
            try:
                self._run()
            except AttributeError as e:
                logger.exception(e)
                raise e
                continue
            except hyper.http20.exceptions.StreamResetError as e:
                logger.exception(e)
                continue
            except ValueError as e:
                logging.exception(e)
                # failed to get an access token, exit
                sys.exit(1)
            except Exception as e:
                logging.exception(e)
                continue


    def _run(self):
        '''
        run方法实现
        :return:
        '''

        self.__config = sdk.configurate.load()
        self.__config['host_url'] = HOST_URL
        self.__config['host_port'] = HOST_PORT
        self.__config['refresh_url'] = TOKEN_URL

        conn = hyper.HTTP20Connection(host=self.__config['host_url'], port=int(self.__config['host_port']),
                                      force_proto='h2')

        headers = {'authorization': 'Bearer {}'.format(self.token)}
        logging.debug("header :" + str(headers))

        downchannel_id = conn.request('GET', '/' + API_VERSION + '/directives', headers=headers)
        downchannel_response = conn.get_response(downchannel_id)

        if downchannel_response.status != 200:
            raise ValueError("/directive requests returned {}".format(downchannel_response.status))

        ctype, pdict = cgi.parse_header(downchannel_response.headers['content-type'][0].decode('utf-8'))
        downchannel_boundary = '--{}'.format(pdict['boundary']).encode('utf-8')
        downchannel = conn.streams[downchannel_id]
        downchannel_buffer = io.BytesIO()
        eventchannel_boundary = 'iFlyOS-voice-boundary'

        # ping every 5 minutes (60 seconds early for latency) to maintain the connection
        self.__ping_time = datetime.datetime.utcnow() + datetime.timedelta(seconds=240)

        logging.debug("event_queue len:" + str(self.event_queue._qsize()))
        # self.event_queue.queue.clear()

        self.directive_sequencer.system.synchronize_state()

        while not self.done:
            # logger.info("Waiting for event to send to CVS")
            # logger.info("Connection socket can_read %s", conn._sock.can_read)
            try:
                event, listener, attachment = self.event_queue.get(timeout=0.25)
            except queue.Empty:
                event = None
            else:
                logging.debug("event_queue len:" + str(self.event_queue._qsize()))

            # we want to avoid blocking if the data wasn't for stream downchannel
            while conn._sock.can_read:
                conn._single_read()

            while downchannel.data:
                framebytes = downchannel._read_one_frame()
                self.directive_sequencer.read_response_h2(framebytes, downchannel_boundary, downchannel_buffer)

            if event is None:
                self._ping(conn)
                continue

            logging.debug("event received")
            headers = {
                ':method': 'POST',
                ':scheme': 'https',
                ':path': '/' + API_VERSION + '/events',
                'authorization': 'Bearer {}'.format(self.token),
                'content-type': 'multipart/form-data; boundary={}'.format(eventchannel_boundary),
                'Accept': 'multipart/related;type=audio/L16',
            }

            stream_id = conn.putrequest(headers[':method'], headers[':path'])
            default_headers = (':method', ':scheme', ':authority', ':path')
            for name, value in headers.items():
                is_default = name in default_headers
                conn.putheader(name, value, stream_id, replace=is_default)
            conn.endheaders(final=False, stream_id=stream_id)

            metadata = {
                'context': self.directive_sequencer.context,
                'event': event
            }
            logger.debug('metadata: {}'.format(json.dumps(metadata, indent=4)))

            json_part = '--{}\r\n'.format(eventchannel_boundary)
            json_part += 'Content-Disposition: form-data; name="metadata"\r\n'
            json_part += 'Content-Type: application/json; charset=UTF-8\r\n\r\n'
            json_part += json.dumps(metadata)

            conn.send(json_part.encode('utf-8'), final=False, stream_id=stream_id)

            if event is not None and attachment:
                attachment_header = '\r\n--{}\r\n'.format(eventchannel_boundary)
                attachment_header += 'Content-Disposition: form-data; name="audio"\r\n'
                attachment_header += 'Content-Type: application/octet-stream\r\n\r\n'
                conn.send(attachment_header.encode('utf-8'), final=False, stream_id=stream_id)

                # CVS_AUDIO_CHUNK_PREFERENCE = 320
                for chunk in attachment:
                    conn.send(chunk, final=False, stream_id=stream_id)
                    # print '===============send(attachment.chunk)'

                    # check if StopCapture directive is received
                    while conn._sock.can_read:
                        conn._single_read()

                    while downchannel.data:
                        framebytes = downchannel._read_one_frame()
                        self.directive_sequencer.read_response_h2(framebytes, downchannel_boundary, downchannel_buffer)

                self.last_activity = datetime.datetime.utcnow()

            end_part = '\r\n--{}--'.format(eventchannel_boundary)
            conn.send(end_part.encode('utf-8'), final=True, stream_id=stream_id)

            logger.info("wait for response")
            resp = conn.get_response(stream_id)
            logger.info("status code: %s", resp.status)

            if resp.status == 200:
                self.directive_sequencer.read_response_h2(resp)
            elif resp.status_code == 204 or resp.status_code == 502 :
                self.event_channel_result_queue.put((resp.status,))
            else:
                resp_body = None
                if resp.headers.get("content-type").find('application/json') >= 0:
                    resp_body = resp.json()
                    logging.debug("response body:" + str(resp_body))

                self.event_channel_result_queue.put((resp.status_code, [resp_body, ], None))
                logger.warning(resp.headers)
                logger.warning(resp.text)

            if listener and callable(listener):
                listener()

    def _ping(self, connection):
        '''
        长链接维护,ping操作
        :param connection:链接句柄
        :return:
        '''
        if datetime.datetime.utcnow() >= self.__ping_time:
            # ping_stream_id = connection.request('GET', '/ping',
            #                                     headers={'authorization': 'Bearer {}'.format(self.token)})
            # resp = connection.get_response(ping_stream_id)
            # if resp.status != 200 and resp.status != 204:
            #     logger.warning(resp.read())
            #     raise ValueError("/ping requests returned {}".format(resp.status))

            connection.ping(uuid.uuid4().hex[:8])

            logger.debug('ping at {}'.format(datetime.datetime.utcnow().strftime("%a %b %d %H:%M:%S %Y")))

            # ping every 5 minutes (60 seconds early for latency) to maintain the connection
            self.__ping_time = datetime.datetime.utcnow() + datetime.timedelta(seconds=240)

    def run_h1(self):
        '''
        iFlyOS线程实体
        :return:
        '''
        te = threading.Thread(target=self.run_events)
        te.daemon = True
        te.start()

        while not self.done:
            try:
                self._run_directives()
                time.sleep(1)
            except AttributeError as e:
                logger.exception(e)
                continue
            except ValueError as e:
                logging.exception(e)
                # failed to get an access token, exit
                sys.exit(1)
            except Exception as e:
                logging.exception(e)
                continue

        # te.join()

    def run_events(self):
        '''
        iFlyOS线程实体
        :return:
        '''
        while not self.done:
            try:
                self._run_events()
            except AttributeError as e:
                logger.exception(e)
                continue
            except ValueError as e:
                logging.exception(e)
                # failed to get an access token, exit
                sys.exit(1)
            except Exception as e:
                logging.exception(e)
                continue

    def _run_directives(self):
        '''
        run方法实现，在直接测试网关层时使用，使用HTTP/1.1协议
        :return:
        '''
        self._event.set()
        headers = {'authorization': 'Bearer {}'.format(self.token)}

        # downchannel_response = self._ses.get(
        #    'http://{}:{}/directives'.format(self.__config['host_url'], self.__config['host_port']),
        #    headers=headers, timeout=3600)

        # if downchannel_response.status_code != 200:
        #    raise ValueError("/directive requests returned {}".format(downchannel_response.status_code))

        # ctype, pdict = cgi.parse_header(downchannel_response.headers['content-type'][0].decode('utf-8'))
        # downchannel_boundary = '--{}'.format(pdict['boundary']).encode('utf-8')
        # downchannel_buffer = io.BytesIO()

    def _run_events(self):
        self._event.wait()

        # self.event_queue.queue.clear()
        self.directive_sequencer.system.synchronize_state()
        while not self.done:
            # logger.info("Waiting for event to send to CVS")
            # logger.info("Connection socket can_read %s", conn._sock.can_read)
            try:
                event, listener, attachment = self.event_queue.get(timeout=0.25)
            except queue.Empty:
                event = None
            else:
                logging.debug("event_queue len:" + str(self.event_queue._qsize()))

            # we want to avoid blocking if the data wasn't for stream downchannel
            # while self._ses.request._sock.can_read:
            #    self._ses._single_read()

            # while downchannel.data:
            #    framebytes = downchannel._read_one_frame()
            #    self._read_response(framebytes, downchannel_boundary, downchannel_buffer)

            if event is None:
                if datetime.datetime.utcnow() >= self.__ping_time:
                    resp = self._ses.request('GET', '/ping',
                                             headers={'authorization': 'Bearer {}'.format(self.token)})
                    if resp.status_code != 200 and resp.status_code != 204:
                        logger.warning(resp.text())
                        raise ValueError("/ping requests returned {}".format(resp.status_code))

                    logger.debug('ping at {}'.format(datetime.datetime.utcnow().strftime("%a %b %d %H:%M:%S %Y")))

                    # ping every 5 minutes (60 seconds early for latency) to maintain the connection
                    self.__ping_time = datetime.datetime.utcnow() + datetime.timedelta(seconds=240)
                continue

            logging.debug("event received")

            headers = {
                'authorization': 'Bearer {}'.format(self.token),
            }

            metadata = {
                'context': self.directive_sequencer.context,
                'event': event
            }

            logger.debug('headers: {}'.format(json.dumps(headers, indent=4)))
            logger.debug('metadata: {}'.format(json.dumps(metadata, indent=4)))

            json_part = json.dumps(metadata)

            if event is not None and attachment:
                attachment_part = None
                for chunk in attachment:
                    if attachment_part is not None:
                        attachment_part = attachment_part + chunk
                    else:
                        attachment_part = chunk

            #
            if event is not None and attachment:
                files = {
                    'metadata': (None, json_part, 'application/json; charset=UTF-8'),
                    'audio': (None, attachment_part, 'application/octet-stream'),
                }
            else:
                files = {
                    'metadata': (None, json_part, 'application/json; charset=UTF-8'),
                }
            '''
            mock_body = {
                "directive": {
                    "header": {
                        "namespace": "SpeechSynthesizer",
                        "name": "Speak",
                        "messageId": event['header']['messageId'],
                        "dialogRequestId": event['header']['dialogRequestId'],
                    },
                    "payload": {
                        "url": "{{STRING}}",
                        "format": "AUDIO_MPEG",
                        "token": "{{STRING}}"
                    }
                }
            }
            mock_body = json.dumps(mock_body)
            mock_body.encode()

            rspm = responses.RequestsMock()
            rspm.add(responses.Response(method='POST',
                                        url="http://{}:{}/events".format(self.__config['host_url'],
                                                                         self.__config['host_port']),
                                        json=mock_body,
                                        status=200,
                                        ),
                     )
            resp = self._ses.request("POST", "http://{}:{}/events".format(self.__config['host_url'],
                                                                          self.__config['host_port']),
                                     headers=headers)
'''

            if self._inconformity_boundary:
                headers = {
                    ':method': 'POST',
                    ':scheme': 'https',
                    ':path': '/events',
                    'authorization': 'Bearer {}'.format(self.token),
                    'content-type': 'multipart/form-data; boundary=header_boundary',
                }

                metadata = {
                    'context': self.directive_sequencer.context,
                    'event': event
                }
                logger.debug('metadata: {}'.format(json.dumps(metadata, indent=4)))

                json_part = '--part_boundary\r\n'
                json_part += 'Content-Disposition: form-data; name="metadata"\r\n'
                json_part += 'Content-Type: application/json; charset=UTF-8\r\n\r\n'
                json_part += json.dumps(metadata)
                self._ses.send(json_part, headers=headers, final=False)

                if event is not None and attachment:
                    attachment_header = '\r\n--{part_boundary\r\n'
                    attachment_header += 'Content-Disposition: form-data; name="audio"\r\n'
                    attachment_header += 'Content-Type: application/octet-stream\r\n\r\n'
                    self._ses.send(attachment_header, final=False)
                    self._ses.send(attachment.decode(), final=False)

                    end_part = '\r\n--part_boundary--'
                    resp = self._ses.send(end_part, final=True)

                self._inconformity_boundary = False
            else:
                if self._no_boundary:
                    headers['content-type'] = 'multipart/form-data'
                    req = Request('POST', "http://{}:{}/events".format(self.__config['host_url'],
                                                                       self.__config['host_port']),
                                  headers=headers, data=files)
                    self._no_boundary = False
                else:
                    req = Request('POST', "http://{}:{}/events".format(self.__config['host_url'],
                                                                       self.__config['host_port']),
                                  headers=headers, files=files)
                prepped = req.prepare()
                # del self._ses.headers['Accept-Encoding']
                # del self._ses.headers['Accept']
                resp = self._ses.send(prepped)
                # resp = self._ses.request("POST", "http://{}:{}/events".format(self.__config['host_url'],
                #                                                              self.__config['host_port']),
                #                         headers=headers, files=files)

            logger.info("wait for response")
            # resp = conn.get_response()
            logger.info("status code: %s", resp.status_code)

            if resp.status_code == 200:
                self.directive_sequencer.read_response_h1(resp)
            elif resp.status_code == 204:
                self.event_channel_result_queue.put((resp.status_code,))
            else:
                resp_body = None
                if resp.headers.get("content-type").find('application/json') >= 0:
                    resp_body = resp.json()
                    logging.debug("response body:" + str(resp_body))

                self.event_channel_result_queue.put((resp.status_code, [resp_body, ], None))
                logger.warning(resp.headers)
                logger.warning(resp.text)

            if listener and callable(listener):
                listener()

    @property
    def token(self):
        '''
        token获取
        :return:
        '''

        debug_auth_token = DEBUG_AUTH_TOKEN
        if debug_auth_token is None or len(debug_auth_token) == 0:
            if 'access_token' in self.__config:
                return self.__config['access_token']
        else:
            return debug_auth_token
