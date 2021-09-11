# -*- coding: utf-8 -*-

"""
语音识别功能模块(语音输入)
"""

import logging
import uuid

from global_variables import *

try:
    import Queue as queue
except ImportError:
    import queue

logger = logging.getLogger('SpeechRecognizer')


class SpeechRecognizer(object):
    '''
    语音识别类(语音输入)
    '''
    STATES = {'IDLE', 'RECOGNIZING', 'BUSY', 'EXPECTING SPEECH'}
    PROFILES = {'CLOSE_TALK', 'NEAR_FIELD', 'FAR_FIELD'}
    PRESS_AND_HOLD = {'type': 'PRESS_AND_HOLD', 'payload': {}}
    TAP = {'type': 'TAP', 'payload': {}}

    def __init__(self, iflyos):
        '''
        类初始化
        :param iflyos:iflyos核心实现模块实例
        '''
        self.namespace = 'SpeechRecognizer'
        self.iflyos = iflyos
        self._profile = 'CLOSE_TALK'
        self._state = 'IDLE'
        self._initiator_type = 'WAKEWORD'
        self._timeout_in_milliseconds = 0
        self._token = None
        self._start_index_in_samples = 800
        self._end_index_in_samples = 2400
        self._empty_payload_flag = False
        self._no_audio = False
        self._no_metadata = False

        if AUDIO_FORMAT == 'AUDIO_OPUS_RATE_16000_CHANNELS_1':
            self._audio_format = "AUDIO_OPUS_RATE_16000_CHANNELS_1"
        elif AUDIO_FORMAT == 'AUDIO_L16_RATE_16000_CHANNELS_1':
            self._audio_format = "AUDIO_L16_RATE_16000_CHANNELS_1"
        else:
            self._audio_format = "AUDIO_OPUS_RATE_16000_CHANNELS_1"

        self.dialog_request_id = ''

        self.listening = False
        self.audio_queue = queue.Queue()

    def put(self, audio):
        """
        语音pcm输入
        :param audio: S16_LE format, sample rate 16000 bps audio data
        :return: None
        """
        if self.listening:
            self.audio_queue.put(audio)

    def recognize(self, dialog=None, timeout=10000):
        """
        语音识别
        :param dialog:会话ID
        :param timeout:超时时间(单位毫秒)
        :return:
        """

        if self.listening:
            return

        self._state = 'RECOGNIZING'

        # logging.debug("audio_queue.queue.clear()")
        # self.audio_queue.queue.clear()
        self.listening = True

        self.iflyos.state_listener.on_listening()

        def on_finished():
            self.iflyos.state_listener.on_finished()

            if self.iflyos.directive_sequencer.audio_player.state == 'PAUSED':
                self.iflyos.directive_sequencer.audio_player.resume()

        # Stop playing if wake word is speaking or AudioPlayer is playing
        if self.iflyos.directive_sequencer.speech_synthesizer.state == 'PLAYING':
            self.iflyos.directive_sequencer.speech_synthesizer.stop()
        elif self.iflyos.directive_sequencer.audio_player.state == 'PLAYING':
            self.iflyos.directive_sequencer.audio_player.pause()

        self.dialog_request_id = dialog if dialog else uuid.uuid4().hex

        # Alexa
        # {
        #    "context": [
        #               // This is an array of context objects that are used to communicate the
        #               // state of all client components to Alexa.See Context for details.
        #    ],
        #   "event": {
        #        "header": {
        #            "namespace": "SpeechRecognizer",
        #            "name": "Recognize",
        #            "messageId": "{{STRING}}",
        #            "dialogRequestId": "{{STRING}}"
        #        },
        #        "payload": {
        #            "profile": "{{STRING}}",
        #            "format": "{{STRING}}",
        #            "initiator": {
        #                "type": "{{STRING}}",
        #                "payload": {
        #                    "wakeWordIndices": {
        #                        "startIndexInSamples": {{LONG}},
        #                        "endIndexInSamples": {{LONG}}
        #                    },
        #                    "token": "{{STRING}}"
        #                }
        #            }
        #        }
        #    }
        # }
        if self._empty_payload_flag:
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                },
            }
            self._empty_payload_flag = False
        elif self._initiator_type == 'WAKEWORD':
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                    "profile": self._profile,
                    "format": self._audio_format,
                    "initiator": {
                        "type": self._initiator_type,
                        "payload": {
                            "wakeWordIndices": {
                                "startIndexInSamples": self._start_index_in_samples,
                                "endIndexInSamples": self._end_index_in_samples,
                            },
                        },
                    },
                },
            }
        elif self._initiator_type == 'PRESS_AND_HOLD':
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                    "profile": self._profile,
                    "format": self._audio_format,
                    "initiator": {
                        "type": self._initiator_type,
                    },
                },
            }

        elif self._initiator_type == 'TAP':
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                    "profile": self._profile,
                    "format": self._audio_format,
                    "initiator": {
                        "type": self._initiator_type,
                    },
                },
            }
        elif self._initiator_type is None:
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                    "profile": self._profile,
                    "format": self._audio_format,
                    "initiator": {
                        "type": "XXX",
                    },
                },
            }
        elif self._no_metadata:
            event = {}

        else:
            event = {
                "header": {
                    "namespace": self.namespace,
                    "name": "Recognize",
                    "messageId": uuid.uuid4().hex,
                    "dialogRequestId": self.dialog_request_id
                },
                "payload": {
                    "profile": self._profile,
                    "format": self._audio_format,
                },
            }
            logging.warning("error initiator type" + self._initiator_type)

        def gen():
            time_elapsed = 0
            while self.listening or time_elapsed >= timeout:
                try:
                    chunk = self.audio_queue.get(timeout=1.0)
                except queue.Empty:
                    break

                yield chunk
                time_elapsed += 10  # 10 ms chunk

            self.listening = False
            self.iflyos.state_listener.on_thinking()

        if self._no_audio:
            self.iflyos.send_event(event)
        else:
            self.iflyos.send_event(event, listener=on_finished, attachment=gen())
        self._state = 'BUSY'

    def stop_capture(self, directive):
        '''
        停止录音(云端directive　name方法)
        :param directive: 云端下发的directive
        :return:
        '''
        self.listening = False
        self._state = 'IDLE'
        logger.info('StopCapture')

    def listen(self, directive):
        '''
        启动录音监听(云端directive name方法)
        :param directive: 云端下发的directive
        :return:
        '''
        dialog = directive['header']['dialogRequestId']
        timeout = directive['payload']['timeoutInMilliseconds']

        self.recognize(dialog=dialog, timeout=timeout)

    def expect_speech(self, directive):
        '''
        多轮会话录音
        :return:
        '''
        # {
        #    "directive": {
        #        "header": {
        #            "namespace": "SpeechRecognizer",
        #            "name": "ExpectSpeech",
        #            "messageId": "{{STRING}}",
        #            "dialogRequestId": "{{STRING}}"
        #        },
        #        "payload": {
        #            "timeoutInMilliseconds": {{LONG}},
        #            "initiator": {
        #                "type": "{{STRING}}",
        #                "payload": {
        #                    "token": "{{STRING}}"
        #                }
        #            }
        #        }
        #    }
        # }
        self._state = 'EXPECTING SPEECH'
        payload = directive['payload']
        self._timeout_in_milliseconds = payload['timeoutInMilliseconds']
        if 'initiator' in payload:
            self._initiator_type = payload['initiator']['type']
            self._token = payload['initiator']['payload']['token']
        else:
            self._initiator_type = None

    def expect_speech_timeout(self):
        '''
        超时时间上报
        :return:
        '''
        self._state = 'IDLE'
        event = {
            "header": {
                "namespace": self.namespace,
                "name": "ExpectSpeechTimedOut",
                "messageId": uuid.uuid4().hex,
            },
            "payload": {}
        }
        self.iflyos.send_event(event)

    def set_profile(self, profile):
        '''
        设置profile，测试用
        :return:
        '''
        self._profile = profile

    def set_state(self, state):
        '''
        设置state，测试用
        :return:
        '''
        self._state = state

    def set_audio_format(self, audio_format):
        '''
        设置audio_format，测试用
        :return:
        '''
        self._audio_format = audio_format

    def set_initiator_type(self, initiator_type):
        '''
        initiator_type，测试用
        :return:
        '''
        self._initiator_type = initiator_type

    def set_initiator_start_index_in_samples(self, start_index_in_samples):
        '''
        start_index_in_samples，测试用
        :return:
        '''
        self._start_index_in_samples = start_index_in_samples

    def set_initiator_end_index_in_samples(self, end_index_in_samples):
        '''
        end_index_in_samples，测试用
        :return:
        '''
        self._end_index_in_samples = end_index_in_samples

    def set_recognize_token(self, token):
        '''
        token，测试用
        :return:
        '''
        self._token = token

    def set_recognize_empty_payload(self):
        '''
        token，测试用
        :return:
        '''
        self._empty_payload_flag = True

    def set_recognize_no_audio(self):
        '''
        token，测试用
        :return:
        '''
        self._no_audio = True

    def set_recognize_no_metadata(self):
        '''
        token，测试用
        :return:
        '''
        self._no_metadata = True

    @property
    def context(self):
        '''
        获取模块上下文(模块状态)
        :return:
        '''
        return {
            "header": {
                "namespace": self.namespace,
                "name": "RecognizerState"
            },
            "payload": {
                "wakeword": "cyber"
            }
        }
