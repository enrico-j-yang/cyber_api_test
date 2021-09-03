# -*- coding: utf-8 -*-
'''
alexa_client.py
It defines alexa-like client objects

'''
import logging
import os
import sys
import threading

try:
    import Queue as queue
except ImportError:
    import queue

from common.communication_channel import CommunicationChannel


class IFlyOSClient(CommunicationChannel):
    '''
    AlexaClient is a Alexa-like client object
    '''
    audio = None
    player = None
    iflyos = None
    down_channel_result_queue = None
    event_channel_result_queue = None
    _down_channel_directive_queue = None
    _event_channel_directive_queue = None
    _down_channel_binary_queue = None
    _event_channel_binary_queue = None
    _json_body_queue = None
    # _time_out_threshold = 500
    _time_out_threshold = 5
    _resp_code = None
    _down_channel_directives = []
    _down_channel_directive = None
    _down_channel_binary = None
    _event_channel_directives = []
    _event_channel_directive = None
    _event_channel_binary = None

    def __init__(self, mock_enable=False):
        '''
        constructor of AlexaClient
        :param mock_enable: True for mock enable, otherwise disable
        '''
        super(IFlyOSClient, self).__init__(mock_enable)
        self.mock_enable = mock_enable
        if self.mock_enable:
            logging.debug('AlexaClient enable')
        else:
            logging.debug('AlexaClient')


        self.down_channel_result_queue = self.iflyos.down_channel_result_queue
        self.event_channel_result_queue = self.iflyos.event_channel_result_queue
        self._down_channel_directive_queue = queue.Queue()
        self._event_channel_directive_queue = queue.Queue()
        self._down_channel_binary_queue = queue.Queue()
        self._event_channel_binary_queue = queue.Queue()
        self._json_body_queue = queue.Queue()

        self.iflyos.down_channel_event.clear()

    def clear_result_queue(self):
        while not self.down_channel_result_queue.empty():
            self.down_channel_result_queue.get()

        logging.debug("down_channel_result_queue len:" + str(self.down_channel_result_queue._qsize()))

        while not self.event_channel_result_queue.empty():
            self.event_channel_result_queue.get()

        logging.debug("event_channel_result_queue len:" + str(self.event_channel_result_queue._qsize()))

        while not self._down_channel_directive_queue.empty():
            self._down_channel_directive_queue.get()

        logging.debug("_down_channel_directive_queue len:" + str(self._down_channel_directive_queue._qsize()))

        while not self._event_channel_directive_queue.empty():
            self._event_channel_directive_queue.get()

        logging.debug("_event_channel_directive_queue len:" + str(self._event_channel_directive_queue._qsize()))

        while not self._down_channel_binary_queue.empty():
            self._down_channel_binary_queue.get()

        logging.debug("_down_channel_binary_queue len:" + str(self._down_channel_binary_queue._qsize()))

        while not self._event_channel_binary_queue.empty():
            self._event_channel_binary_queue.get()

        logging.debug("_event_channel_binary_queue len:" + str(self._event_channel_binary_queue._qsize()))

        while not self._json_body_queue.empty():
            self._json_body_queue.get()

        logging.debug("_json_body_queue len:" + str(self._json_body_queue._qsize()))

        self.iflyos.down_channel_event.clear()

    def get_result_from_event_channel_queue(self):
        self._resp_code, self._event_channel_directives, self._event_channel_binary = self.event_channel_result_queue.get(
            timeout=self._time_out_threshold)
        logging.debug("event_channel_result_queue len:" + str(self.event_channel_result_queue._qsize()))

        if self._event_channel_directives:
            for directive in self._event_channel_directives:
                self._event_channel_directive_queue.put(directive)
                logging.debug("_event_channel_directive_queue len:" + str(self._event_channel_directive_queue._qsize()))

        if self._event_channel_binary:
            self._event_channel_binary_queue.put(self._event_channel_binary)
            logging.debug("_event_channel_binary_queue len:" + str(self._event_channel_binary_queue._qsize()))

    def get_directive_from_event_channel_list(self):
        self._event_channel_directive = self._event_channel_directive_queue.get(timeout=self._time_out_threshold)
        logging.debug("_event_channel_directive_queue len:" + str(self._event_channel_directive_queue._qsize()))

    def get_binary_from_event_channel_list(self):
        self._event_channel_binary = self._event_channel_binary_queue.get(timeout=self._time_out_threshold)
        logging.debug("_event_channel_binary_queue len:" + str(self._event_channel_binary_queue._qsize()))

    def get_binary_from_event_channel(self):
        logging.debug(self._event_channel_binary)
        if os.path.isfile(self._event_channel_binary):
            return self._event_channel_binary
        else:
            return

    def get_status_code(self):
        return self._resp_code

    def get_key_value_from_event_channel_directive(self, full_key):
        keys = full_key.split('/')
        value = None
        json_body = self._event_channel_directive
        for key in keys:
            value = json_body[key]
            json_body = value

        return value

    def get_key_value_from_event_channel_json_body(self, full_key):
        if len(self._event_channel_directives) > 0:
            self._event_channel_directive = self._event_channel_directives[0]
            del self._event_channel_directives[0]

        keys = full_key.split('/')
        value = None
        json_body = self._event_channel_directive
        for key in keys:
            value = json_body[key]
            json_body = value

        return value

    def get_result_from_down_channel_queue(self):
        self.iflyos.down_channel_event.wait(timeout=self._time_out_threshold)
        if not self.down_channel_result_queue.empty():
            self._down_channel_directives, self._down_channel_binary = self.down_channel_result_queue.get(timeout=self._time_out_threshold)
            logging.debug("down_channel_result_queue len:" + str(self.down_channel_result_queue._qsize()))

            if self._down_channel_directives:
                for directive in self._down_channel_directives:
                    self._down_channel_directive_queue.put(directive)
                    logging.debug("_down_channel_directive_queue len:" + str(self._down_channel_directive_queue._qsize()))

            if self._down_channel_binary:
                self._down_channel_binary_queue.put(self._down_channel_binary)
                logging.debug("_down_channel_binary_queue len:" + str(self._down_channel_binary_queue._qsize()))

    def get_directive_from_down_channel_list(self):
        self._down_channel_directive = self._down_channel_directive_queue.get(timeout=self._time_out_threshold)
        logging.debug("_down_channel_directive_queue len:" + str(self._down_channel_directive_queue._qsize()))

    def get_binary_from_down_channel_list(self):
        self._down_channel_binary = self._down_channel_binary_queue.get(timeout=self._time_out_threshold)
        logging.debug("_down_channel_binary_queue len:" + str(self._down_channel_binary_queue._qsize()))

    def get_binary_from_down_channel(self):
        logging.debug(self._down_channel_binary)
        if os.path.isfile(self._down_channel_binary):
            return self._down_channel_binary
        else:
            return

    def get_key_value_from_down_channel_directive(self, full_key):
        keys = full_key.split('/')
        value = None
        json_body = self._down_channel_directive
        for key in keys:
            value = json_body[key]
            json_body = value

        return value

    def get_key_value_from_down_channel_json_body(self, full_key):
        if len(self._down_channel_directives) > 0:
            self._down_channel_directive = self._down_channel_directives[0]
            del self._down_channel_directives[0]

        keys = full_key.split('/')
        value = None
        json_body = self._down_channel_directive
        for key in keys:
            value = json_body[key]
            json_body = value

        return value
