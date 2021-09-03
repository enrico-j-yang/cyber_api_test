# -*- coding: utf-8 -*-
'''
system_external_event.py derives from test_input.py
It defines system external event class and methods 

'''

try:
    import Queue as queue
except ImportError:
    import queue

from common.test_input import TestInput


class UnknownResultError(Exception):
    pass


class SystemExternalEvent(TestInput):
    '''
    HumanInput derives from TestInput
    '''

    _filters = []
    comm_channel = None

    def __init__(self, comm_channel, mock_enable=False):
        '''
        constructor of SystemExternalEvent
        :param mock_enable: True for mock enable, otherwise disable
        '''
        super(SystemExternalEvent, self).__init__(mock_enable)
        self.comm_channel = comm_channel

    def set_filter(self, audio_filter):
        self._filters.append(audio_filter)

    def get_filters(self):
        return self._filters

    def recognize_intention(self, audio_file, filter_setting=[]):
        if audio_file is not None:
            f = open(audio_file, "rb")
            data = f.read()
            f.close()

            if len(filter_setting) == 0:
                pass

            self.comm_channel.audio.put_data(data)
        self.comm_channel.iflyos.listen()

    def send_event(self, interface, event, *args):
        if self.comm_channel.iflyos.directive_sequencer.namespace_modules.get(interface) is None:
            # send illegal event with wrong namespace
            self.comm_channel.iflyos.directive_sequencer.custom_event(interface, event)
        else:
            module = self.comm_channel.iflyos.directive_sequencer.namespace_modules[interface]
            if hasattr(self.comm_channel.iflyos.directive_sequencer, module):
                if self.comm_channel.iflyos.directive_sequencer.name_methods[module].get(event) is None:
                    # send illegal event with wrong name
                    self.comm_channel.iflyos.directive_sequencer.custom_event(interface, event)
                else:
                    # send normal event
                    self.comm_channel.iflyos.directive_sequencer.name_methods[module][event]()

    def set_profile(self, profile):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_profile(profile)

    def set_audio_format(self, audio_format):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_audio_format(audio_format)

    def set_audio_token(self, token):
        self.comm_channel.iflyos.directive_sequencer.audio_player.set_token(token)

    def set_initiator_type(self, initiator_type):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_initiator_type(initiator_type)

    def set_initiator_start_index_in_samples(self, start_index_in_samples):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_initiator_start_index_in_samples(
            start_index_in_samples)

    def set_initiator_end_index_in_samples(self, end_index_in_samples):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_initiator_end_index_in_samples(
            end_index_in_samples)

    def set_recognize_token(self, token):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_recognize_token(token)

    def set_recognize_empty_payload(self):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_recognize_empty_payload()

    def set_recognize_no_audio(self):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_recognize_no_audio()

    def set_recognize_no_metadata(self):
        self.comm_channel.iflyos.directive_sequencer.speech_recognizer.set_recognize_no_metadata()

    def set_last_activity(self, timestamp_in_seconds):
        self.comm_channel.iflyos.set_last_activity(timestamp_in_seconds)

    def set_no_boundary(self):
        self.comm_channel.iflyos.set_no_boundary()

    def set_inconformity_boundary(self):
        self.comm_channel.iflyos.set_inconformity_boundary()

    def set_firmware_version(self, firmware_version):
        self.comm_channel.iflyos.directive_sequencer.system.set_firmware_version(firmware_version)

    def update_settings(self, settings):
        self.comm_channel.iflyos.directive_sequencer.settings.update_settings(settings)

    def set_audio_player_empty_payload(self):
        self.comm_channel.iflyos.directive_sequencer.audio_player.set_empty_payload()

    def set_empty_playback_stutter_duration_in_milliseconds(self):
        self.comm_channel.iflyos.directive_sequencer.audio_player.set_empty_playback_stutter_duration_in_milliseconds()

    def set_context(self, iflyos_context):
        '''
        直接设置上下文的接口，测试用
        :param iflyos_context: 需要设置的上下文
        :return:
        '''
        try:
            item = iflyos_context.get('PlaybackState')
        except KeyError:
            pass
        else:
            self.comm_channel.iflyos.directive_sequencer.audio_player.set_offset(item['offsetInMilliseconds'])
            self.comm_channel.iflyos.directive_sequencer.audio_player.set_player_activity(item['playerActivity'])
