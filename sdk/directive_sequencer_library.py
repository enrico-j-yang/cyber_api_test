# -*- coding: utf-8 -*-

"""
指令分发模块
"""

import cgi
import io
import json
import logging
import uuid

try:
    import Queue as queue
except ImportError:
    import queue

import wave
# import opuslib.api.decoder
# from opuslib.exceptions import OpusError

from global_variables import *
from sdk.capability_agents.alerts import Alerts
from sdk.capability_agents.audio_player import AudioPlayer
from sdk.capability_agents.notifications import Notifications
from sdk.capability_agents.playback_controller import PlaybackController
from sdk.capability_agents.settings import Settings
from sdk.capability_agents.speaker import Speaker
from sdk.capability_agents.speech_recognizer import SpeechRecognizer
from sdk.capability_agents.speech_synthesizer import SpeechSynthesizer
from sdk.capability_agents.system import System
from sdk.capability_agents.template_runtime import TemplateRuntime

logger = logging.getLogger(__name__)


class Device:
    def __init__(self):
        self.namespace = 'Device'
        self.name = 'DeviceState'

    @property
    def context(self):
        '''
        获取模块上下文(模块状态)
        :return:
        '''

        return {
            "header": {
                "namespace": self.namespace,
                "name": self.name,
            },
            "payload": {
                "deviceId": DEVICE_ID
            }
        }


class Custom:
    _has_screen = False

    def __init__(self, has_screen=False):
        self.namespace = 'Custom'
        self.name = 'Custom'
        self._has_screen = has_screen

    def set_screen(self, has_screen):
        self._has_screen = has_screen

    @property
    def context(self):
        '''
        获取模块上下文(模块状态)
        :return:
        '''
        if self._has_screen:
            return {
                "header": {
                    "namespace": self.namespace,
                    "name": self.name,
                },
                "payload": {
                    "ip": "",
                    "chatbot": False,
                    "screen": True,
                }
            }
        else:
            return {
                "header": {
                    "namespace": self.namespace,
                    "name": self.name,
                },
                "payload": {
                    "ip": "",
                    "chatbot": False,
                }
            }


class DirectiveSequencer(object):
    def __init__(self, player, iflyos):
        self._iflyos = iflyos
        self.alerts = Alerts(iflyos, player)
        self.audio_player = AudioPlayer(iflyos, player)
        self.notifications = Notifications(iflyos, player)
        self.playback_controller = PlaybackController(iflyos, player)
        self.settings = Settings(iflyos)
        self.speaker = Speaker(iflyos, player)
        self.speech_recognizer = SpeechRecognizer(iflyos)
        self.speech_synthesizer = SpeechSynthesizer(iflyos, player)
        self.system = System(iflyos)
        self.template_runtime = TemplateRuntime(iflyos)
        self.device = Device()
        self.custom = Custom()

        # 将namespace字段内容与interface中的模块进行一一对应
        self.namespace_modules = {
            "Alerts": "alerts",
            "AudioPlayer": "audio_player",
            # "Bluetooth": "bluetooth",
            "Notifications": "notifications",
            "PlaybackController": "playback_controller",
            "Settings": "settings",
            "Speaker": "speaker",
            "SpeechRecognizer": "speech_recognizer",
            "SpeechSynthesizer": "speech_synthesizer",
            "System": "system",
            "TemplateRuntime": "template_runtime",
            # "Screen": "screen",
            # "Navigator": "navigator",
            # "Map": "map",
            # "Weather": "weather",
        }

        # 将name字段内容与interface中的模块方法进行一一对应
        self.name_methods = {
            # 闹钟模块[alerts]
            "alerts":
                {
                    "SetAlert": self.alerts.set_alert,
                    "SetAlertSucceeded": self.alerts.set_alert_succeeded,
                    "SetAlertFailed": self.alerts.set_alert_failed,
                    "DeleteAlert": self.alerts.delete_alert,
                    "DeleteAlertSucceeded": self.alerts.delete_alert_succeeded,
                    "DeleteAlertFailed": self.alerts.delete_alert_failed,
                    "AlertStarted": self.alerts.alert_started,
                    "AlertStopped": self.alerts.alert_stopped,
                    "AlertEnteredForeground": self.alerts.alert_entered_foreground,
                    "AlertEnteredBackground": self.alerts.alert_entered_background,
                },
            # 音频播放器模块[audio_player]
            "audio_player":
                {
                    "Play": self.audio_player.play,
                    "PlaybackStarted": self.audio_player.playback_started,
                    "PlaybackNearlyFinished": self.audio_player.playback_nearly_finished,
                    "ProgressReportDelayElapsed": self.audio_player.progress_report_delay_elapsed,
                    "ProgressReportIntervalElapsed": self.audio_player.progress_report_interval_elapsed,
                    "PlaybackStutterStarted": self.audio_player.playback_stutter_started,
                    "PlaybackStutterFinished": self.audio_player.playback_stutter_finished,
                    "PlaybackFinished": self.audio_player.playback_finished,
                    "PlaybackFailed": self.audio_player.playback_failed,
                    "Stop": self.audio_player.stop,
                    "PlaybackStopped": self.audio_player.playback_stopped,
                    "PlaybackPaused": self.audio_player.playback_paused,
                    "PlaybackResumed": self.audio_player.playback_resumed,
                    "ClearQueue": self.audio_player.clear_queue,
                    "PlaybackQueueCleared": self.audio_player.playback_queue_cleared,
                    "StreamMetadataExtracted": self.audio_player.stream_metadata_extracted,
                },
            # 音乐回放模块[playback_controller]
            "playback_controller":
                {
                    "PlayCommandIssued": self.playback_controller.play_command_issued,
                    "PauseCommandIssued": self.playback_controller.pause_command_issued,
                    "NextCommandIssued": self.playback_controller.next_command_issued,
                    "PreviousCommandIssued": self.playback_controller.previous_command_issued,
                },
            # 语音输出模块[notifications]
            "notifications":
                {
                    "SetIndicator": self.notifications.set_indicator,
                    "ClearIndicator": self.notifications.clear_indicator,
                },
            # 语音输出模块[settings]
            "settings":
                {
                    "SettingsUpdated": self.settings.settings_updated,
                },
            # 扬声器控制模块[speaker]
            "speaker":
                {
                    "SetVolume": self.speaker.set_volume,
                    "AdjustVolume": self.speaker.adjust_volume,
                    "VolumeChanged": self.speaker.volume_changed,
                    "SetMute": self.speaker.set_mute,
                    "MuteChanged": self.speaker.mute_changed,
                },
            # 语音输入模块[speech_recognizer]
            "speech_recognizer":
                {
                    "Recognize": self.speech_recognizer.recognize,
                    "StopCapture": self.speech_recognizer.stop_capture,
                    "ExpectSpeech": self.speech_recognizer.expect_speech,
                    "ExpectSpeechTimedOut": self.speech_recognizer.expect_speech_timeout,
                },
            # 语音输出模块[speech_synthesizer]
            "speech_synthesizer":
                {
                    "Speak": self.speech_synthesizer.speak,
                    "SpeechStarted": self.speech_synthesizer.speech_started,
                    "SpeechFinished": self.speech_synthesizer.speech_finished,
                },
            # 播放控制[playback_controller]
            # 屏幕展示模块[screen]
            # "screen":
            #    {
            #        "HtmlView": "html_view",
            #        "SelectView": "select_view",
            #        "OpenUri": "open_uri",
            #        "AdjustBrightness": "adjust_brightness",
            #    },
            # 系统模块[system]
            "system":
                {
                    "SynchronizeState": self.system.synchronize_state,
                    "UserInactivityReport": self.system.user_inactivity_report,
                    "ResetUserInactivity": self.system.reset_user_inactivity,
                    "SetEndpoint": self.system.set_endpoint,
                    "SoftwareInfo": self.system.software_info,
                    "ReportSoftwareInfo": self.system.report_software_info,
                    "ExceptionEncountered": self.system.exception_encountered,
                },
            # 屏幕展示模块[template_runtime]
            "template_runtime":
                {
                    "RenderTemplate": self.template_runtime.render_template,
                    "RenderPlayerInfo": self.template_runtime.render_player_info,
                },
            # 导航模块[navigator]
            # "navigator":
            #    {
            #        "Start": "start",
            #        "Stop": "stop",
            #        "Resume": "resume",
            #        "Query": "query",
            #        "ReporterToggle": "reporter_toggle",
            #        "Reroute": "reroute",
            #        "RoutePoiSearch": "route_poi_search",
            #        "AddWayPoint": "add_way_point",
            #    },
            # 地图模块[map]
            # "map":
            #    {
            #        "Control": "control",
            #        "AlertToggle": "alert_toggle",
            #        "AddUserAddress": "add_user_address",
            #    },
            # 天气模块[weather]
            # "weather":
            #    {
            #        "Query": "query",
            #    },
        }

        # handle audio to speech recognizer
        self.put = self.speech_recognizer.put

        # self.t = threading.Thread(target=self._daemon)
        # self.t.daemon = True
        # self.t.start()

    def directive_listener(self, directive_content):
        '''
        云端下发directive监听器
        :param directive_content:云端下发directive内容
        :return:
        '''
        logging.info(directive_content)

    def _dispatcher(self, directive):
        try:
            namespace = directive['header']['namespace']
            try:
                module = self.namespace_modules[namespace]
            except KeyError as e:
                logger.info('{} is not implemented yet'.format(namespace))
                self._iflyos.unhandled_directive = namespace
                self._iflyos.error['message'] = '{} is not implemented yet'.format(namespace)
                return
            except Exception as e:
                logging.error(e)
                return

            name = directive['header']['name']
            try:
                method = self.name_methods[module][name]
            except KeyError as e:
                logger.info('{}.{} is not implemented yet'.format(module, name))
                self._iflyos.unhandled_directive = name
                self._iflyos.error['message'] = '{}.{} is not implemented yet'.format(module, name)
                return
            except Exception as e:
                logging.error(e)
                return

            if hasattr(self, module):
                directive_func = method
                if directive_func:
                    directive_func(directive)
                else:
                    logger.info('{}.{} is not implemented yet'.format(module, method))
                    self._iflyos.unhandled_directive = name
                    self._iflyos.error['message'] = '{}.{} is not implemented yet'.format(module, method)
            else:
                logger.info('{} is not implemented yet'.format(module))
                self._iflyos.unhandled_directive = name
                self._iflyos.error['message'] = '{} is not implemented yet'.format(module)

        except KeyError as e:
            logger.exception(e)
        except Exception as e:
            logger.exception(e)

    def read_response_h2(self, response, boundary=None, buffer=None):
        '''
        云端回复数据读取解析
        :param response:包含http header信息
        :param boundary:multipart boundary
        :param buffer:包含http body数据
        :return:
        '''
        if boundary is None and buffer is None:
            source_channel = "event_channel"
        else:
            source_channel = "down_channel"

        if boundary:
            endboundary = boundary + b"--"
        else:
            ctype, pdict = cgi.parse_header(
                response.headers['content-type'][0].decode('utf-8'))
            boundary = "--{}".format(pdict['boundary']).encode('utf-8')
            endboundary = "--{}--".format(pdict['boundary']).encode('utf-8')

        on_boundary = False
        in_header = False
        in_payload = False
        first_payload_block = False
        content_type = None
        content_id = None
        binary = None

        def iter_lines(response, delimiter=None):
            pending = None
            for chunk in response.read_chunked():
                # logger.debug("Chunk size is {}".format(len(chunk)))
                if pending is not None:
                    chunk = pending + chunk
                if delimiter:
                    lines = chunk.split(delimiter)
                else:
                    lines = chunk.splitlines()

                if lines and lines[-1] and chunk and lines[-1][-1] == chunk[-1]:
                    pending = lines.pop()
                else:
                    pending = None

                for line in lines:
                    yield line

            if pending is not None:
                yield pending

        # cache them up to execute after we've downloaded any binary attachments
        # so that they have the content available
        directives = []
        if isinstance(response, bytes):
            buffer.seek(0)
            lines = (buffer.read() + response).split(b"\r\n")
            buffer.flush()
        else:
            lines = iter_lines(response, delimiter=b"\r\n")
        for line in lines:
            # logger.debug("iter_line is {}...".format(repr(line)[0:30]))
            if line == boundary or line == endboundary:
                # logger.debug("Newly on boundary")
                on_boundary = True
                if in_payload:
                    in_payload = False
                    if content_type == "application/json":
                        logger.info("Finished downloading JSON")
                        utf8_payload = payload.getvalue().decode('utf-8')
                        if utf8_payload:
                            json_payload = json.loads(utf8_payload)
                            logger.debug(json_payload)
                            if 'directive' in json_payload:
                                directives.append(json_payload['directive'])
                    else:
                        logger.info("Finished downloading {} which is {}".format(content_type, content_id))
                        payload.seek(0)
                        # TODO, start to stream this to speakers as soon as we start getting bytes
                        # strip < and >
                        content_id = content_id[1:-1]
                        data = payload.read()
                        with open('output_audio/{}.bin'.format(content_id), "wb") as f:
                            f.write(data)

                        logger.info('write audio to {}.bin'.format(content_id))
                        binary = 'output_audio/{}.bin'.format(content_id)
                continue
            elif on_boundary:
                # logger.debug("Now in header")
                on_boundary = False
                in_header = True
            elif in_header and line == b"":
                # logger.debug("Found end of header")
                in_header = False
                in_payload = True
                first_payload_block = True
                payload = io.BytesIO()
                continue

            if in_header:
                # logger.debug(repr(line))
                if len(line) > 1:
                    header, value = line.decode('utf-8').split(":", 1)
                    ctype, pdict = cgi.parse_header(value)
                    if header.lower() == "content-type":
                        content_type = ctype
                    if header.lower() == "content-id":
                        content_id = ctype

            if in_payload:
                # add back the bytes that our iter_lines consumed
                logger.info("Found %s bytes of %s %s, first_payload_block=%s",
                            len(line), content_id, content_type, first_payload_block)
                if first_payload_block:
                    first_payload_block = False
                else:
                    payload.write(b"\r\n")
                # TODO write this to a queue.Queue in self._content_cache[content_id]
                # so that other threads can start to play it right away
                payload.write(line)

        if buffer is not None:
            if in_payload:
                logger.info(
                    "Didn't see an entire directive, buffering to put at top of next frame")
                buffer.write(payload.read())
            else:
                buffer.write(boundary)
                buffer.write(b"\r\n")

        for directive in directives:
            # if 'directive_listener' in dir(self):
            #    self.directive_listener(directive)

            logger.debug(json.dumps(directive, indent=4))
            self._dispatcher(directive)

        if source_channel == "event_channel":
            if len(directives) > 0:
                self._iflyos.event_channel_result_queue.put((200, directives, binary,))
                logging.debug(
                    "event_channel_result_queue len:" + str(self._iflyos.event_channel_result_queue._qsize()))
            else:
                self._iflyos.event_channel_result_queue.put((200, None, None))
                logging.debug("event_channel_result_queue len:" + str(self._iflyos.event_channel_result_queue._qsize()))
        else:
            if len(directives) > 0:
                self._iflyos.down_channel_result_queue.put((directives, binary,))
                logging.debug("down_channel_result_queue len:" + str(self._iflyos.down_channel_result_queue._qsize()))
                self._iflyos.down_channel_event.set()

    def read_response_h1(self, response, boundary=None, buffer=None):
        '''
        云端回复数据读取解析
        :param response:包含http header信息
        :param boundary:multipart boundary
        :param buffer:包含http body数据
        :return:
        '''
        if boundary is None and buffer is None:
            source_channel = "event_channel"
        else:
            source_channel = "down_channel"

        import email

        content_type = response.headers.get('content-type')
        boundary = content_type[content_type.find('boundary=') + len('boundary=') + 1:len(content_type) - 1]
        boundary = "--{}".format(boundary)
        endboundary = "--{}--".format(boundary)

        directives = []
        body = "Content-Type:" + content_type + "\r\n" + response.text
        body = email.message_from_string(body)
        binary = None
        if body.is_multipart():
            for payload in body.get_payload():
                items = payload.items()
                content_type = payload.get_content_type()
                if content_type == 'application/json':
                    line = payload.get_payload()
                    json_payload = json.loads(line)
                    logger.debug(json_payload)
                    if 'directive' in json_payload:
                        directives.append(json_payload['directive'])
                elif content_type == 'application/octet-stream':
                    for item in items:
                        if 'Content-ID' in item:
                            content_id = item[1]
                    data = payload.get_payload(decode=True)
                    f = open('output_audio/tts.opus_dong', "wb")
                    f.write(data)
                    f.close()
                    if AUDIO_FORMAT == 'AUDIO_OPUS_RATE_16000_CHANNELS_1':

                        data_io = io.BytesIO(data)
                        dec = opuslib.api.decoder.create_state(16000, 1)
                        f = wave.open('output_audio/tts.wav', "wb")
                        f.setnchannels(1)
                        f.setsampwidth(2)
                        f.setframerate(16000)

                        try:
                            while True:
                                data_size = int.from_bytes(data_io.read(1), byteorder='little')
                                if data_size == 0:
                                    break
                                data = data_io.read(data_size)
                                dec_data = opuslib.api.decoder.decode(dec, data, data_size, 160, False, 1)
                                f.writeframesraw(dec_data)
                        except OpusError as e:
                            logging.error(e)
                        finally:
                            opuslib.api.decoder.destroy(dec)
                            f.close()

                    elif AUDIO_FORMAT == 'AUDIO_L16_RATE_16000_CHANNELS_1':
                        with wave.open('output_audio/tts.wav', "wb") as f:
                            f.setnchannels(1)
                            f.setsampwidth(2)
                            f.setframerate(16000)
                            f.setnframes(int(len(data) / 2))
                            f.writeframes(data)

                    else:
                        data_io = io.BytesIO(data)
                        dec = opuslib.api.decoder.create_state(16000, 1)
                        f = wave.open('output_audio/tts.wav', "wb")
                        f.setnchannels(1)
                        f.setsampwidth(2)
                        f.setframerate(16000)

                        while True:
                            data_size = int.from_bytes(data_io.read(1), byteorder='little')
                            if data_size == 0:
                                break
                        data = data_io.read(data_size)
                        dec_data = opuslib.api.decoder.decode(dec, data, data_size, 160, False, 1)
                        f.writeframesraw(dec_data)

                        opuslib.api.decoder.destroy(dec)
                        f.close()

                    binary = 'output_audio/tts.wav'
                    pass
                elif content_type == 'plain/text':
                    line = payload.get_payload()
                    logger.debug(line)
                else:
                    line = payload.get_payload()
                    logger.debug(line)
        else:
            line = body.get_payload()
            logger.debug(line)

        for directive in directives:
            # if 'directive_listener' in dir(self):
            #    self.directive_listener(directive)

            logger.debug(json.dumps(directive, indent=4))
            self._dispatcher(directive)

        if source_channel == "event_channel":
            if len(directives) > 0:
                self._iflyos.event_channel_result_queue.put((200, directives, binary,))
                logging.debug(
                    "event_channel_result_queue len:" + str(self._iflyos.event_channel_result_queue._qsize()))
            else:
                self._iflyos.event_channel_result_queue.put((200, None, None))
                logging.debug("event_channel_result_queue len:" + str(self._iflyos.event_channel_result_queue._qsize()))
        else:
            self._iflyos.down_channel_result_queue.put((directives, binary,))
            logging.debug("down_channel_result_queue len:" + str(self._iflyos.down_channel_result_queue._qsize()))

    def recognize(self):
        self.speech_recognizer.recognize()

    def custom_event(self, interface, event, *args):
        event = {
            "header": {
                "namespace": interface,
                "name": event,
                "messageId": uuid.uuid4().hex
            },
            "payload": {
            }
        }
        self._iflyos.send_event(event)

    @property
    def context(self):
        '''
        获取模块上下文(模块状态)
        :return:
        '''
        return [self.speech_recognizer.context,
                self.audio_player.context,
                self.alerts.context,
                self.speaker.context,
                self.speech_synthesizer.context,
                self.device.context,
                self.custom.context, ]  # ,
        # self.notifications.context]
