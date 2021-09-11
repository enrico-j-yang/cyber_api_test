# -*- coding: utf-8 -*-

"""
PlaybackController模块
"""


class PlaybackController(object):
    '''
    PlaybackController类
    '''

    def __init__(self, iflyos, player):
        '''
        类初始化
        :param iflyos:iflyos核心处理模块
        :param player: 播放器
        '''
        self.namespace = 'PlaybackController'
        self.iflyos = iflyos
        self.player = player

    def play_command_issued(self):
        '''
        播放命令(云端directive　name方法)
        :return:
        '''
        #{
        #    "context": [
        #               // This is an array of context objects that are used to communicate the
        #               // state of all client components to Alexa.See Context for details.
        #    ],
        #    "event": {
        #       "header": {
        #           "namespace": "PlaybackController",
        #           "name": "PlayCommandIssued",
        #            "messageId": "{{STRING}}"
        #       },
        #       "payload": {
        #       }
        #   }
        #}
        pass

    def pause_command_issued(self):
        '''
        播放命令(云端directive　name方法)
        :return:
        '''
        #{
        #    "context": [
        #               // This is an array of context objects that are used to communicate the
        #               // state of all client components to Alexa.See Context for details.
        #    ],
        #    "event": {
        #       "header": {
        #           "namespace": "PlaybackController",
        #           "name": "PauseCommandIssued",
        #            "messageId": "{{STRING}}"
        #       },
        #       "payload": {
        #       }
        #   }
        #}
        pass

    def next_command_issued(self):
        '''
        播放命令(云端directive　name方法)
        :return:
        '''
        #{
        #    "context": [
        #               // This is an array of context objects that are used to communicate the
        #               // state of all client components to Alexa.See Context for details.
        #    ],
        #    "event": {
        #       "header": {
        #           "namespace": "PlaybackController",
        #           "name": "NextCommandIssued",
        #            "messageId": "{{STRING}}"
        #       },
        #       "payload": {
        #       }
        #   }
        #}
        pass

    def previous_command_issued(self):
        '''
        播放命令(云端directive　name方法)
        :return:
        '''
        #{
        #    "context": [
        #               // This is an array of context objects that are used to communicate the
        #               // state of all client components to Alexa.See Context for details.
        #    ],
        #    "event": {
        #       "header": {
        #           "namespace": "PlaybackController",
        #           "name": "PreviousCommandIssued",
        #            "messageId": "{{STRING}}"
        #       },
        #       "payload": {
        #       }
        #   }
        #}
        pass
