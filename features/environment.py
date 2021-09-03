# -*- coding: utf-8 -*-
'''
environment.py is pre-process and post-process for all step implementation files

'''
import logging
from selenium import webdriver
from selenium.webdriver.chrome.options import Options as ChromeOptions


from common.comm.alexa_client import IFlyOSClient
from common.input.system_external_event import *
from common.output.actual_result import ActualResult
from common.output.expected_result import ExpectedResult
from common.test_input import TestInput
from utility.tts import TTS
from global_variables import *

try:
    os.mkdir("logs")
except FileExistsError:
    pass

cwd = os.getcwd()

logging.basicConfig(level=logging.DEBUG,
                    format=u'%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S',
                    filename='logs/iflyos_api_test.log',
                    filemode='w')

logging._defaultFormatter = logging.Formatter(u"%(message)s")


def before_all(context):

    pass


def after_all(context):
    pass


def before_feature(context, feature):
    pass


def after_feature(context, feature):
    pass


def before_scenario(context, scenario):
    # create tts
    context.tts_client = TTS()

    # create communication channels
    context.iflyos_client = IFlyOSClient()

    # create test module objects
    context.TI = TestInput()  # iflyos api test input object
    context.TI.sysExtEvt = SystemExternalEvent(context.iflyos_client)  # iflyos api system external input object
    context.ER = ExpectedResult()  # iflyos api expected result object
    context.AR = ActualResult(context.iflyos_client)  # iflyos api actual result object

    pass


def after_scenario(context, scenario):

    pass


def before_step(context, step):
    pass


def after_step(context, step):
    pass
