# -*- coding: utf-8 -*-

"""
Capabilities模块
"""
import json
import requests
import sdk.configurate
from global_variables import *
import logging


logger = logging.getLogger(__name__)
logger.setLevel(logging.DEBUG)

class Capabilities(object):
    '''
    Capabilities模块
    '''
    def __init__(self):
        '''
        类初始化
        :param iflyos:iflyos核心处理模块
        '''
        self.namespace = 'Capabilities'
        self.capability_url = CAPABILITY_URL


    def default_capabilities(self):
        self.token = sdk.configurate.load()['access_token']

        self.headers = {
            'authorization': 'Bearer {}'.format(self.token),
            'content-type': 'application/json',
        }

        default = {
            "envelopeVersion": "v20180810",
            "capabilities": [
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Alerts",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "AudioPlayer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Notifications",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "PlaybackController",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Settings",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Speaker",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "SpeechRecognizer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "SpeechSynthesizer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "System",
                    "version": "1.0"
                }
            ]
        }

        json_part = json.dumps(default)
        logger.debug(json.dumps(default, indent=4))
        requests.put(self.capability_url + '/v1/devices/capabilities', headers=self.headers, data=json_part)


    def appmigu_capabilities(self):
        self.token = sdk.configurate.load()['access_token']

        self.headers = {
            'authorization': 'Bearer {}'.format(self.token),
            'content-type': 'application/json',
        }

        migu = {
            "envelopeVersion": "v20180810",
            "capabilities": [
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Alerts",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "AudioPlayer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Bluetooth",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Notifications",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "PlaybackController",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Settings",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "Speaker",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "SpeechRecognizer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "SpeechSynthesizer",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "System",
                    "version": "1.0"
                },
                {
                    "type": "iFLYOS.Interface",
                    "interface": "AppMigu",
                    "version": "1.0"
                }
            ]
        }

        json_part = json.dumps(migu)
        logger.debug(json.dumps(migu, indent=4))
        requests.put(self.capability_url + '/v1/devices/capabilities', headers=self.headers, data=json_part)
