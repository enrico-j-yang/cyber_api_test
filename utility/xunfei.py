# -*- coding: utf-8 -*-
import time

import base64
import hashlib
import json
import logging
import requests

from global_variables import *


class XunfeiSynthesis(object):

    def __init__(self):
        pass

    @staticmethod
    def get_header(aue, auf, voice_name, speed='50', volume='50', pitch='50', engine_type='inpt65', text_type='text'):
        cur_time = str(int(time.time()))
        param = "{\"aue\":\"" + aue + \
                "\",\"auf\":\"" + str(auf) + \
                "\",\"voice_name\":\"" + voice_name + \
                "\",\"speed\":\"" + speed + \
                "\",\"volume\":\"" + volume + \
                "\",\"pitch\":\"" + pitch + \
                "\",\"engine_type\":\"" + engine_type + \
                "\",\"text_type\":\"" + text_type + \
                "\"}"
        param_base64 = base64.b64encode(param.encode())
        m2 = hashlib.md5()
        m2.update((XUNFEI_API_KEY + cur_time).encode() + param_base64)
        checksum = m2.hexdigest()
        header = {
            'X-CurTime': cur_time,
            'X-Param': param_base64.decode(),
            'X-Appid': XUNFEI_APPID,
            'X-CheckSum': checksum,
            'X-Real-Ip': '121.8.170.58',
            'Content-Type': 'application/x-www-form-urlencoded; charset=utf-8',
        }
        return header

    @staticmethod
    def get_body(text):
        data = {'text': text}
        return data

    @staticmethod
    def write_file(file, content):
        with open(file, 'wb') as f:
            f.write(content)
        f.close()

    def synthesis(self, voice_content, aue="raw", auf="audio/L16;rate=16000", voice_name="xiaoyan", speed='50',
                  volume='50', pitch='50', engine_type='x', text_type='text'):
        r = requests.post(XUNFEI_TTS_URL,
                          headers=self.get_header(aue, auf, voice_name, speed, volume, pitch, engine_type, text_type),
                          data=self.get_body(voice_content))
        resp_content_type = r.headers['Content-Type']
        if resp_content_type == "audio/mpeg":
            sid = r.headers['sid']
            logging.info("success, sid = " + sid)
            return r.content
        else:
            logging.error(r.text)
            text = json.loads(r.text)
            return text
