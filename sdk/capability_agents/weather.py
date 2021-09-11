# -*- coding: utf-8 -*-

"""
Weather模块
"""

import os
import datetime
import dateutil.parser
from threading import Timer
import uuid


class Weather(object):
    '''
    Weather类
    '''
    STATES = {'NAVIGATING', 'CRUISING'}

    def __init__(self, iflyos):
        '''
        类初始化
        :param iflyos:iflyos核心处理模块
        '''
        self.namespace = 'Map'
        self.iflyos = iflyos
        self.state = 'NAVIGATING'
        self.alert_toggle_state = False

    def control(self, directive):
        pass

    def alert_toggle(self, directive):
        pass

    def add_user_address(self, directive):
        pass

    @property
    def context(self):

        '''
        获取模块上下文(模块状态)
        :return:
        '''
        return {
            "header": {
                "namespace": self.namespace,
                "name": "MapState"
            },
            "payload": {
                "State": self.state
            }
        }
