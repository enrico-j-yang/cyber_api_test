# -*- coding: utf-8 -*-

import os

AUDIO_FORMAT = os.getenv('AUDIO_FORMAT', 'AUDIO_L16_RATE_16000_CHANNELS_1')

INVALID_PROFILE = os.getenv("INVALID_PROFILE", "INVALID_PROFILE")

INVALID_FORMAT = os.getenv("INVALID_FORMAT", "INVALID_FORMAT")

INVALID_INITIATOR_TYPE = os.getenv("INVALID_INITIATOR_TYPE", "INVALID_INITIATOR_TYPE")
# 配置文件保存位置
DEFAULT_CONFIG_FILE = os.path.join(os.path.expanduser('.'), '.iflyos.json')

TOKEN_URL = os.getenv("TOKEN_URL")

PHONE_NUMBER = os.getenv("PHONE_NUMBER", "13888888888")

CAPTCHAR = os.getenv("CAPTCHAR", "123456")

PLATFORM_ACCOUNT = os.getenv("PLATFORM_ACCOUNT", "13888888888")

PASSWORD = os.getenv("PASSWORD")

HOST_URL = os.getenv("HOST_URL", "localhost")

HOST_PORT = os.getenv("HOST_PORT", "80")

GATEWAY_TEST = os.getenv("GATEWAY_TEST", "False")

DEVICE_ID = os.getenv("DEVICE_ID")

XUNFEI_TTS_URL = os.getenv('XUNFEI_TTS_URL', 'http://api.xfyun.cn/v1/service/v1/tts')

XUNFEI_APPID = os.getenv('XUNFEI_APPID')

XUNFEI_API_KEY = os.getenv('XUNFEI_API_KEY')

BAIDU_APP_ID = os.getenv('BAIDU_APP_ID')

BAIDU_API_KEY = os.getenv('BAIDU_API_KEY')

BAIDU_SECRET_KEY = os.getenv('BAIDU_SECRET_KEY')

DEBUG_AUTH_TOKEN = os.getenv("DEBUG_AUTH_TOKEN")

INVALID_AUDIO_TOKEN = os.getenv("INVALID_AUDIO_TOKEN", "xxxxxxxxxxx")

OPEN_IFLYOS_URL = os.getenv("OPEN_IFLYOS_URL", "https://open.iflyos.cn")

CLIENT_ID = os.getenv("CLIENT_ID")

CLIENT_SECRET = os.getenv("CLIENT_SECRET")

API_VERSION = os.getenv("API_VERSION", "v20180515")

