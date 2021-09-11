# -*- coding: utf-8 -*-

"""
Navigator模块
"""

import os
import datetime
import dateutil.parser
from threading import Timer
import uuid


class Navigator(object):
    '''
    Navigator类
    '''
    STATES = {'NAVIGATING', 'CRUISING'}

    def __init__(self, iflyos):
        '''
        类初始化
        :param iflyos:iflyos核心处理模块
        '''
        self.namespace = 'Navigator'
        self.iflyos = iflyos
        self.state = 'NAVIGATING'
        self.reporter_toggle_state = False

    def start(self):
        self.state = 'NAVIGATING'

    def stop(self):
        self.state = 'CRUISING'

    def resume(self):
        self.state = 'NAVIGATING'

    def query(self, directive):
        pass

    def reporter_toggle(self, directive):
        pass

    def reroute(self, directive):
        pass

    def route_poi_search(self, directive):
        pass

    def add_way_point(self, directive):
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
                "name": "NavigatorState"
            },
            "payload": {
                "State": self.state
            }
        }
