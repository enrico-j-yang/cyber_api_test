# -*- coding: utf-8 -*-

"""
Screen模块
"""

import os
import datetime
import dateutil.parser
from threading import Timer
import uuid


class Screen(object):
    '''
    Screen类
    '''
    STATES = {'IDLE', 'FOREGROUND', 'BACKGROUND'}

    def __init__(self, iflyos):
        '''
        类初始化
        :param iflyos:iflyos核心处理模块
        '''
        self.namespace = 'Screen'
        self.iflyos = iflyos
        self.brightness = 0

    def html_view(self):
        pass

    def select_view(self):
        pass

    def open_uri(self):
        pass

    def adjust_brightness(self):
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
                "name": "ScreenState"
            },
            "payload": {
                "Brightness": str(self.brightness)
            }
        }
