# -*- coding: utf-8 -*-
'''
environment.py is pre-process and post-process for all step implementation files

'''
import logging
# from selenium import webdriver
# from selenium.webdriver.chrome.options import Options as ChromeOptions


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
    # set webdriver
    # chromedriver = "/usr/local/bin/chromedriver"
    # options = ChromeOptions()
    # options.add_argument("--start-fullscreen")
    # context.driver = webdriver.Chrome(chromedriver, options=options)
    # context.driver.implicitly_wait(5)

    if AUDIO_FORMAT == 'AUDIO_OPUS_RATE_16000_CHANNELS_1':
        context.no_content_audio = cwd + "/audio_files/no_content_audio.opus_dong"
    elif AUDIO_FORMAT == 'AUDIO_L16_RATE_16000_CHANNELS_1':
        context.no_content_audio = cwd + "/audio_files/no_content_audio.pcm"
    else:
        context.no_content_audio = cwd + "/audio_files/no_content_audio.opus_dong"

    pass


def after_all(context):
    # context.driver.quit()
    pass


def before_feature(context, feature):
    pass


def after_feature(context, feature):
    # 删除测试添加的设备
    # context.driver.get(OPEN_IFLYOS_URL + "/products/all")

    # try:
    #     els = context.driver.find_element_by_xpath("//*[contains(text(), '测试用')]")
    #     while els:
    #         eld = context.driver.find_element_by_xpath("//*[text()='你配置的设备']")
    #         hov = ActionChains(context.driver).move_to_element(eld).move_to_element(els)
    #         hov.perform()
    #         wait = WebDriverWait(context.driver, 3)
    #         wait.until(lambda dr: dr.find_element_by_id("delete").is_displayed())
    #         el = context.driver.find_element_by_id("delete")
    #         el.click()
    #         wait = WebDriverWait(context.driver, 30)
    #         wait.until(lambda dr: dr.find_element_by_xpath("//button").is_displayed())
    #
    #         els = context.driver.find_elements_by_xpath("//button")
    #         for el in els:
    #             text = el.text
    #             if text == '确 定':
    #                 el.click()
    #                 wait = WebDriverWait(context.driver, 30)
    #                 wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '删除成功')]").is_displayed())
    #                 break
    #
    #         els = context.driver.find_element_by_xpath("//*[contains(text(), '测试用')]")
    # except NoSuchElementException:
    #     pass
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

    context.client_id = CLIENT_ID
    context.client_secret = CLIENT_SECRET
    pass


def after_scenario(context, scenario):
    # screen_shot_name = "./screenshots/" + scenario.name + ".png"
    # context.driver.get_screenshot_as_file(screen_shot_name)

    if 'Login' not in scenario.tags and 'DeviceDashboard' not in scenario.tags:
        context.iflyos_client.iflyos.stop()
        context.iflyos_client.audio.stop()

        if scenario.status == 'failed':
            context.iflyos_client.clear_result_queue()

    if 'Alerts' in scenario.tags:
        # try:
            context.execute_steps('''
#       那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        # 模拟用户说出【删除所有闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【删除全部闹钟】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【要删除所有闹钟吗？确认还是取消】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
#      那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【确认】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【确定】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【已为你删除所有闹钟】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【确定】

        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【DeleteAlert】
        当       iFlyOS客户端发送event【Alerts】，【DeleteAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功
    # ''')
    #     except BaseException:
    #         logging.warning("delete all alerts fail")
    pass



def before_step(context, step):
    pass


def after_step(context, step):
    pass
