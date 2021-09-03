# -*- coding: utf-8 -*-
'''
http_connection.py
It defines HTTP connection objects

'''
import logging

from common.communication_channel import CommunicationChannel


class HTTPConnection(CommunicationChannel):
    '''
    HTTPConnection is general test input class
    '''

    _response = None

    def __init__(self, mock_enable=False):
        '''
        constructor of HTTPConnection
        :param mock_enable: True for mock enable, otherwise disable
        '''
        super(HTTPConnection, self).__init__(mock_enable)
        self.mock_enable = mock_enable
        if self.mock_enable:
            logging.debug('HTTPConnection enable')
        else:
            logging.debug('HTTPConnection')

    @property
    def response(self):
        return self._response
