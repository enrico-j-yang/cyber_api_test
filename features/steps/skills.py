# -*- coding: utf-8 -*-
'''
skills.py is step implementation file for product.feature

'''

import time

import logging
from behave import *
from io import BytesIO
from pyshould import *
from selenium.common.exceptions import NoSuchElementException
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.common.action_chains import ActionChains
from selenium.webdriver.support.ui import WebDriverWait

import sdk.configurate as configuration
from global_variables import *
from sdk.auth import iFlyOSAuth


#### Given

@given(u'用户已有产品【{product}】')
def step_impl(context, product):
    context.execute_steps('''
        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
    ''')
    try:
        wait = WebDriverWait(context.driver, 3)
        wait.until(
            lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + product + "')]").is_displayed())
    except TimeoutException:
        context.execute_steps('''
            当       用户点击【接入新设备】控件
            那么      浏览器显示【接入新设备】页面
            # 创建产品,选择类型、场景、操作系统
            当       用户填写设备名称为【测试专用通用场景】
            而且      用户选择【通用场景】设备类型
            而且      用户选择【Android】的操作系统
            而且      用户点击【开始配置】按钮
    
            # 描述设备基础信息
            那么      浏览器显示【产品配置】页面
            而且      浏览器显示【设备信息】页面
            当       用户填写设备名称为【测试专用通用场景】
            当       用户填写设备描述为【测试专用通用场景设备描述】
            当       用户点击【复制】复制client_secret
            当       用户复制client_id
            当       用户点击【我知道了】按钮
            那么      浏览器显示【创建成功】提示
            当       用户移动到【接入控制台】菜单
            #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
            那么      浏览器显示【接入控制台】下拉菜单
            当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
        ''')
    else:
        pass


@given(u'用户已有带屏产品【{product}】')
def step_impl(context, product):
    context.TI.sysExtEvt.comm_channel.iflyos.directive_sequencer.custom.set_screen(True)
    context.execute_steps('''
        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
    ''')
    try:
        wait = WebDriverWait(context.driver, 3)
        wait.until(
            lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + product + "')]").is_displayed())
    except TimeoutException:
        context.execute_steps('''
        当       用户点击【接入新设备】控件
        那么      浏览器显示【接入新设备】页面
        # 创建产品,选择类型、场景、操作系统
        当       用户填写设备名称为【测试专用带屏音箱】
        而且      用户选择【带屏音箱】设备类型
        而且      用户选择【Android】的操作系统
        而且      用户点击【开始配置】按钮

        # 描述设备基础信息
        那么      浏览器显示【产品配置】页面
        而且      浏览器显示【设备信息】页面
        当       用户填写设备名称为【测试专用带屏音箱】
        当       用户填写设备描述为【测试专用带屏音箱设备描述】
        当       用户点击【复制】复制client_secret
        当       用户复制client_id
        当       用户点击【我知道了】按钮
        那么      浏览器显示【创建成功】提示
        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
    ''')


@given(u'用户已有无屏产品【{product}】')
def step_impl(context, product):
    context.TI.sysExtEvt.comm_channel.iflyos.directive_sequencer.custom.set_screen(False)
    context.execute_steps('''
        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
    ''')
    try:
        wait = WebDriverWait(context.driver, 30)
        wait.until(
            lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + product + "')]").is_displayed())
    except TimeoutException:
        context.execute_steps('''
        当       用户点击【接入新设备】控件
        那么      浏览器显示【接入新设备】页面
        # 创建产品,选择类型、场景、操作系统
        当       用户填写设备名称为【测试专用音箱】
        而且      用户选择【音箱】设备类型
        而且      用户选择【Android】的操作系统
        而且      用户点击【开始配置】按钮

        # 描述设备基础信息
        那么      浏览器显示【产品配置】页面
        而且      浏览器显示【设备信息】页面
        当       用户填写设备名称为【测试专用音箱】
        当       用户填写设备描述为【测试专用音箱设备描述】
        当       用户点击【复制】复制client_secret
        当       用户复制client_id
        当       用户点击【我知道了】按钮
        那么      浏览器显示【创建成功】提示
        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
    ''')


@given(u'iFlyOS客户端正在播放音乐')
def step_impl(context):
    context.execute_steps('''
        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功
    ''')

@given(u'iFlyOS客户端在【{offset}】暂停播放了音乐')
def step_impl(context, offset):
    context.execute_steps('''
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【暂停】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # # 服务端下发意图
        # 那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】,TTS音频包含【暂停】
        # 当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        # 那么      iFlyOS服务端回复状态为【200】成功
        # 当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        # 那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】，参数【offsetInMilliseconds】为【''' + offset + '''】
        那么      iFlyOS服务端回复状态为【200】成功

        # 当        iFlyOS客户端发送查询状态请求
        # 那么      iFlyOS服务端音乐播放器状态为【STOP】
    ''')

@given(u'iFlyOS客户端正在播放流式音乐')
def step_impl(context):
    context.execute_steps('''
        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放...】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功
    ''')


@given(u'iFlyOS客户端正在播放链接音乐')
def step_impl(context):
    context.execute_steps('''
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
         # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放...】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

       
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功
    ''')


@given(u'iFlyOS客户端音乐正在缓冲')
def step_impl(context):
    context.execute_steps('''
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放...】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
    ''')


@given(u'iFlyOS客户端已经打开成语接龙')
def step_impl(context):
    context.execute_steps('''
        # 模拟用户说出【打开成语接龙】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【成语接龙】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【我先开始】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我先开始】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【请先给我一个成语】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
    ''')


@given(u'用户产品技能全部未选定')
def step_impl(context):
    logging.warning(u'用户产品技能全部未选定' + u'not implemented')
    pass


@given(u'用户产品【{skill}】技能未打开')
def step_impl(context, skill):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath(
        "//*[contains(text(), '" + skill + "')]/../../../../label/span").is_displayed())
    try:
        el = context.driver.find_element_by_xpath("//*[text()='" + skill + "']/../../../../label/span")
    except NoSuchElementException:
        el = context.driver.find_element_by_xpath("//*[contains(text(), '" + skill + "')]/../../../../label/span")
    class_name = el.get_attribute('class')
    if class_name.find('checked') >= 0:
        el.click()


@given(u'用户产品【{skill}】技能已打开')
def step_impl(context, skill):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath(
        "//*[contains(text(), '" + skill + "')]/../../../../label/span").is_displayed())
    try:
        el = context.driver.find_element_by_xpath("//*[text()='" + skill + "']/../../../../label/span")
    except NoSuchElementException:
        el = context.driver.find_element_by_xpath("//*[contains(text(), '" + skill + "')]/../../../../label/span")
    class_name = el.get_attribute('class')
    if class_name.find('checked') < 0:
        el.click()


@given(u'iFlyOS客户端正在播放有声点播')
def step_impl(context):
    logging.warning(u'iFlyOS客户端正在播放有声点播' + u'not implemented')
    pass


@given(u'用户iFlyOS客户端设备未绑定')
def step_impl(context):
    if os.path.isfile(".iflyos.json"):
        os.remove(".iflyos.json")


#### When


@when(u'用户选择【{category}】设备类型')
def step_impl(context, category):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//div[contains(text(), '" + category + "')]").is_displayed())
    el = context.driver.find_element_by_xpath("//div[contains(text(), '" + category + "')]")
    el.click()


@when(u'用户点击【{widget}】菜单项')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(@class, 'dropDownItem')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(@class, 'dropDownItem')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            el.click()
            break

    text | should.contain_the_substring(widget)


@when(u'用户点击【{widget}】')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(text(), '" + widget + "')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            el.click()
            break

    text | should.contain_the_substring(widget)


@when(u'用户点击【{widget}】设备')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(text(), '" + widget + "')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            el.click()
            break

    text | should.contain_the_substring(widget)


@when(u'用户填写设备名称为【{product_name}】')
def step_impl(context, product_name):
    try:
        wait = WebDriverWait(context.driver, 3)
        wait.until(
            lambda dr: dr.find_element_by_xpath("//*[contains(text(), '设备名称')]").is_displayed())
        context.driver.find_element_by_xpath("//*[contains(text(), '设备名称')]")
    except TimeoutException:
        try:
            context.driver.find_element_by_xpath("//*[contains(text(), '产品名称')]")
        except NoSuchElementException:
            logging.error("no input element found")
            assert False
        else:
            el_input = context.driver.find_element_by_xpath("//*[contains(text(), '产品名称')]/../input")
            if el_input.text != product_name:
                el_input.clear()
                el_input.send_keys(product_name)
    else:
        el_input = context.driver.find_element_by_xpath("//*[contains(text(), '设备名称')]/../input")
        el_input.clear()
        el_input.send_keys(product_name)


@when(u'用户填写设备描述为【{product_description}】')
def step_impl(context, product_description):
    try:
        wait = WebDriverWait(context.driver, 3)
        wait.until(
            lambda dr: dr.find_element_by_xpath("//*[contains(text(), '设备描述')]").is_displayed())
        context.driver.find_element_by_xpath("//*[contains(text(), '设备描述')]")
    except TimeoutException:
        logging.error("no input element found")
        assert False
    else:
        el_input = context.driver.find_element_by_xpath("//*[contains(text(), '设备描述')]/../textarea")
        if el_input.text != product_description:
            el_input.clear()
            el_input.send_keys(product_description)


@when(u'用户点击【{copy}】复制client_secret')
def step_impl(context, copy):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), 'client_secret')]").is_displayed())
    try:
        context.driver.find_element_by_xpath("//*[contains(text(), 'client_secret')]")
    except NoSuchElementException:
        logging.error("no input element found")
        assert False
    else:
        el = context.driver.find_element_by_xpath(
            "//p[contains(text(), 'client_secret')]/../p[contains(@class, 'description')]")
        context.client_secret = el.text


@when(u'用户复制client_id')
def step_impl(context):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), 'client_id')]").is_displayed())
    try:
        context.driver.find_element_by_xpath("//*[contains(text(), 'client_id')]")
    except NoSuchElementException:
        logging.error("no input element found")
        assert False
    else:
        el = context.driver.find_element_by_xpath(
            "//p[contains(text(), 'client_id')]/../p[contains(@class, 'description')]")
        context.client_id = el.text


@when(u'用户选择【{operation}】的操作系统')
def step_impl(context, operation):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + operation + "')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(text(), '" + operation + "')]")
    text = None
    for el in els:
        text = el.text
        if text == operation:
            el.click()
            break

    text | should.contain_the_substring(operation)


@when(u'用户设置音量为【{volume}】')
def step_impl(context, volume):
    # 定义一个超过控件长度的步长初始值,通过加或减一次之后,与目标值的差距,如果差距在减小,步长值减半,再加或减,直至达到目标值
    # 这里为了测试控件的拖动与微调加减控件,开始会先将滑动条拖动到最小与最大,然后再开始上述方法。
    # 当差距在3以内,则使用加减控件调整到目标值
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '音量')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '音量')]/../../div/div/div[@role='slider']")
    value = el.get_attribute("aria-valuenow")
    int(value) | should.equal(5)
    action = ActionChains(context.driver)
    action.drag_and_drop_by_offset(el, -300, 0)
    action.perform()
    value = el.get_attribute("aria-valuenow")
    int(value) | should.equal(1)
    action.drag_and_drop_by_offset(el, 300, 0)
    action.perform()
    value = el.get_attribute("aria-valuenow")
    int(value) | should.equal(10)

    step = 100
    diff = int(volume) - int(value)
    old_diff = diff
    while abs(diff) > 2:
        if abs(diff) < abs(old_diff) or diff * old_diff < 0:
            step = step / 2
        step = abs(step) * diff / abs(diff)
        action.click_and_hold(el).move_by_offset(step, 0).release()
        action.perform()
        value = el.get_attribute("aria-valuenow")
        diff = int(volume) - int(value)

    if diff > 0:
        el = context.driver.find_element_by_xpath(
            "//*[contains(text(), '音量')]/../../div/div/i[@class='anticon anticon-caret-up']")
    else:
        el = context.driver.find_element_by_xpath(
            "//*[contains(text(), '音量')]/../../div/div/i[@class='anticon anticon-caret-down']")

    for i in range(abs(diff)):
        el.click()


@when(u'用户设置语速为【{pace}】')
def step_impl(context, pace):
    # 定义一个超过控件长度的步长初始值,通过加或减一次之后,与目标值的差距,如果差距在减小,步长值减半,再加或减,直至达到目标值
    # 这里为了测试控件的拖动与微调加减控件,开始会先将滑动条拖动到最小与最大,然后再开始上述方法。
    # 当差距在3以内,则使用加减控件调整到目标值
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '语速')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '语速')]/../../div/div/div[@role='slider']")
    value = el.get_attribute("aria-valuenow")
    float(value) | should.equal(1)
    action = ActionChains(context.driver)
    action.drag_and_drop_by_offset(el, -300, 0)
    action.perform()
    value = el.get_attribute("aria-valuenow")
    float(value) | should.equal(0.5)
    action.drag_and_drop_by_offset(el, 300, 0)
    action.perform()
    value = el.get_attribute("aria-valuenow")
    float(value) | should.equal(1.5)

    step = 100
    diff = float(pace) - float(value)
    old_diff = diff
    while abs(diff) > 0.3:
        if abs(diff) < abs(old_diff) or diff * old_diff < 0:
            step = step / 2
        step = abs(step) * diff / abs(diff)
        action.click_and_hold(el).move_by_offset(step, 0).release()
        action.perform()
        value = el.get_attribute("aria-valuenow")
        diff = float(pace) - float(value)

    if diff > 0:
        el = context.driver.find_element_by_xpath(
            "//*[contains(text(), '语速')]/../../div/div/i[@class='anticon anticon-caret-up']")
    else:
        el = context.driver.find_element_by_xpath(
            "//*[contains(text(), '语速')]/../../div/div/i[@class='anticon anticon-caret-down']")

    for i in range(int(abs(diff) * 10)):
        el.click()


@when(u'用户选择【{voice}】发音人')
def step_impl(context, voice):
    el = context.driver.find_element_by_xpath("//*[contains(text(), '发音人')]/../../div/div/img")
    el.click()
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '选择发音人')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '" + voice + "')]/..")
    el.click()

    els = context.driver.find_elements_by_xpath("//button")
    text = None
    for el in els:
        text = el.text
        if text == '确 定':
            el.click()
            break

    text | should.contain_the_substring('确 定')
    wait = WebDriverWait(context.driver, 30)
    wait.until_not(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '选择发音人')]").is_displayed())


@when(u'用户选择【{skill}】技能')
def step_impl(context, skill):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '保 存')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '" + skill + "')]/../../../../label/span")
    class_name = el.get_attribute('class')
    if class_name.find('checked') < 0:
        el.click()


@when(u'用户打开【{skill}】技能')
def step_impl(context, skill):
    context.execute_steps('''
        当       用户选择【''' + skill + '''】技能
    ''')


@when(u'用户关闭【{skill}】技能')
def step_impl(context, skill):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '保 存')]").is_displayed())
    el = context.driver.find_element_by_xpath("//span[contains(text(), '" + skill + "')]/../../span")
    class_name = el.get_attribute('class')
    if class_name.find('checked') >= 0:
        el.click()


@when(u'用户打开属性【{image_property}】并改为【{value}】')
def step_impl(context, image_property, value):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '全部状态')]").is_displayed())
    el = context.driver.find_element_by_xpath("//span[contains(text(), '" + image_property + "')]/../../div/div/span")
    class_name = el.get_attribute('class')
    if class_name.find('ant-switch-checked') < 0:
        eld = context.driver.find_element_by_xpath("//*[text()='系统画像']")
        y_dest = eld.location.get('y')
        y_source = el.location.get('y')
        context.driver.execute_script("window.scrollBy(0, " + str(y_source - y_dest) + ")")
        el.click()
        wait = WebDriverWait(context.driver, 30)
        wait.until(lambda dr: dr.find_element_by_xpath(
            "//*[contains(text(), '" + image_property + "')]/../../div/div/a[@id='editValue']").is_displayed())
    el = context.driver.find_element_by_xpath(
        "//span[contains(text(), '" + image_property + "')]/../../div/div/a[@id='editValue']")
    el.click()
    el = context.driver.find_element_by_xpath(
        "//span[contains(text(), '" + image_property + "')]/../../div/div/a[@id='editValue']/../input")
    el.clear()
    el.send_keys(value)
    el = context.driver.find_element_by_xpath(
        "//span[contains(text(), '" + image_property + "')]/../../div/div/a[@id='editValue']")
    el.click()


@when(u'用户编辑【{device}】设备')
def step_impl(context, device):
    wait = WebDriverWait(context.driver, 30)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + device + "')]").is_displayed())

    els = context.driver.find_element_by_xpath("//*[contains(text(), '" + device + "')]")
    eld = context.driver.find_element_by_xpath("//*[text()='你接入的设备']")
    hov = ActionChains(context.driver).move_to_element(eld).move_to_element(els)
    hov.perform()
    el = context.driver.find_element_by_xpath("//*[text()='" + device + "']")
    hov = ActionChains(context.driver).move_to_element(els).move_to_element(el).click()
    hov.perform()


@when(u'用户编辑【样例问题】与【回答内容】为【{answer}】')
def step_impl(context, answer):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_id("editAnswers").is_displayed())
    el = context.driver.find_element_by_id("editAnswers")
    el.text | should.equal("编辑")
    el.click()
    el = context.driver.find_element_by_xpath("//textarea")
    el.clear()
    texts = answer.split('\\n')
    for text in texts:
        el.send_keys(text)
        el.send_keys('\n')
    el = context.driver.find_element_by_id("editAnswers")
    el.text | should.equal("保存")
    el.click()
    texts = answer.split('\\n')
    for text in texts:
        context.driver.find_element_by_xpath("//*[contains(text(), '" + text + "')]")


@when(u'用户绑定iFlyOS客户端设备')
def step_impl(context):
    if hasattr(context, "client_id") and hasattr(context, "client_secret"):
        context.auth = iFlyOSAuth(configuration.DEFAULT_CONFIG_FILE, context.client_id, context.client_secret)

    else:
        context.auth = iFlyOSAuth(configuration.DEFAULT_CONFIG_FILE)

    context.auth.auth_request()

    if context.iflyos_client.iflyos:
        context.iflyos_client.audio.link(context.iflyos_client.iflyos)
        context.iflyos_client.iflyos.start()
    else:
        logging.error("创建CyberOS实例失败")

    if context.iflyos_client.audio:
        context.iflyos_client.audio.start()
    else:
        logging.error("创建录音设备失败")
    pass


@when(u'用户等待{duration}秒')
def step_impl(context, duration):
    time.sleep(duration)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，使用以下PlaybackState上下文')
def step_impl(context, voice_content):
    iflyos_context = {'PlaybackState': {}}
    playback_state = iflyos_context['PlaybackState']
    for row in context.table:
        if row['token'] == "NULL":
            playback_state['token'] = ""

        playback_state['offsetInMilliseconds'] = row['offsetInMilliseconds']
        playback_state['playerActivity'] = row['playerActivity']
    context.TI.sysExtEvt.set_context(iflyos_context)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【initiator】【type】为【{initiator_type}】')
def step_impl(context, voice_content, initiator_type):
    context.TI.sysExtEvt.set_initiator_type(initiator_type)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【profile】为【{profile}】')
def step_impl(context, voice_content, profile):
    context.TI.sysExtEvt.set_profile(profile)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】')
def step_impl(context, voice_content):
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【offsetInMilliseconds】为【{position}】')
def step_impl(context, position):
    context.iflyos_client.player.seek(position)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStarted')

@when(u'iFlyOS客户端音乐播放器定位到【{position}】')
def step_impl(context, position):
    context.TI.sysExtEvt.comm_channel.player.seek(position)


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【{position}】')
def step_impl(context, position):
    context.iflyos_client.player.seek(position)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackPaused')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为【{position}】')
def step_impl(context, position):
    context.iflyos_client.player.seek(position)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackResumed')


@when(u'iFlyOS客户端发送event【System】，【UserInactivityReport】，参数【inactiveTimeInSeconds】为【{inactive_time_in_seconds}】')
def step_impl(context, inactive_time_in_seconds):
    context.TI.sysExtEvt.set_last_activity(int(inactive_time_in_seconds))
    context.TI.sysExtEvt.send_event('System', 'UserInactivityReport')


@when(u'iFlyOS客户端发送event【System】，【SoftwareInfo】，参数【firmwareVersion】为【{firmware_version}】')
def step_impl(context, firmware_version):
    context.TI.sysExtEvt.set_firmware_version(firmware_version)
    context.TI.sysExtEvt.send_event('System', 'SoftwareInfo')


@when(u'iFlyOS客户端发送event【Settings】，【SettingsUpdated】，参数【key】为【{key}】，参数【value】为【{value}】')
def step_impl(context, key, value):
    param = {}
    param[key] = value
    context.TI.sysExtEvt.update_settings(param)
    context.TI.sysExtEvt.send_event('Settings', 'SettingsUpdated')


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【profile】为错误值')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_profile(INVALID_PROFILE)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【format】为错误值')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_audio_format(INVALID_FORMAT)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【initiator】【type】为错误值')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_initiator_type(INVALID_INITIATOR_TYPE)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】' +
      u'，参数【initiator】【type】为【{initiator_type}】，参数【initiator】【payload】【wakeWordIndices】【startIndexInSamples】为负数')
def step_impl(context, voice_content, initiator_type):
    context.TI.sysExtEvt.set_initiator_type(initiator_type)
    context.TI.sysExtEvt.set_initiator_start_index_in_samples(-1)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】' +
      u'，参数【initiator】【type】为【{initiator_type}】，参数【initiator】【payload】【wakeWordIndices】【endIndexInSamples】为负数')
def step_impl(context, voice_content, initiator_type):
    context.TI.sysExtEvt.set_initiator_type(initiator_type)
    context.TI.sysExtEvt.set_initiator_end_index_in_samples(-1)
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，参数【initiator】【payload】【token】为错误值')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_recognize_token('XXX')
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【{voice_content}】，payload为空')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_empty_payload()
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为空白内容')
def step_impl(context):
    context.TI.sysExtEvt.recognize_intention(context.no_content_audio)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，multipart里只有metadata,没有audio')
def step_impl(context):
    context.TI.sysExtEvt.set_recognize_no_audio()
    context.TI.sysExtEvt.recognize_intention(None)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，multipart里只有audio,没有metadata,用户音频为【{voice_content}】')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_recognize_no_metadata()
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，header没有Boundary,用户音频为【{voice_content}】')
def step_impl(context, voice_content):
    context.TI.sysExtEvt.set_no_boundary()
    audio_file_path = context.tts_client.tts(voice_content)
    context.TI.sysExtEvt.recognize_intention(audio_file_path)


@when(u'iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，header里的Boundary与各part的Boundary不一致,用户音频为【{voice_content}】')
def step_impl(context, voice_content):
    raise NotImplementedError(u'STEP: When iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】，参数【token】为错误值')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【token】，【offsetInMilliseconds】为空值')
def step_impl(context):
    context.iflyos_client.player.seek(0)
    context.TI.sysExtEvt.set_audio_token('')
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，payload为空值')
def step_impl(context):
    context.TI.sysExtEvt.set_playback_started_empty_payload()
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackNearlyFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackNearlyFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【ProgressReportDelayElapsed】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'ProgressReportDelayElapsed')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【ProgressReportDelayElapsed】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'ProgressReportDelayElapsed')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'ProgressReportIntervalElapsed')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'ProgressReportIntervalElapsed')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterStarted')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【stutterDurationInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.set_playback_stutter_duration_in_milliseconds(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，缺少参数【stutterDurationInMilliseconds】')
def step_impl(context):
    context.TI.sysExtEvt.set_empty_playback_stutter_duration_in_milliseconds()
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStutterFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackFinished')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【{'
      u'offset_in_milliseconds}】，参数【token】为错误值')
def step_impl(context, offset_in_milliseconds):
    context.iflyos_client.player.seek(int(offset_in_milliseconds))
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackPaused')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackPaused')


@when(
    u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为【{offset_in_milliseconds}】，参数【token】为错误值')
def step_impl(context, offset_in_milliseconds):
    context.iflyos_client.player.seek(int(offset_in_milliseconds))
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackPaused')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackResumed')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】，参数【offsetInMilliseconds】为负数')
def step_impl(context):
    context.iflyos_client.player.seek(-1)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStopped')


@when(u'iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('AudioPlayer', 'PlaybackStopped')


@when(u'iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('SpeechSynthesizer', 'SpeechStarted')


@when(u'iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】，参数【token】为错误值')
def step_impl(context):
    context.TI.sysExtEvt.set_audio_token(INVALID_AUDIO_TOKEN)
    context.TI.sysExtEvt.send_event('SpeechSynthesizer', 'SpeechFinished')


@when(u'iFlyOS客户端发送event【{interface}】，【{event}】')
def step_impl(context, interface, event):
    context.TI.sysExtEvt.send_event(interface, event)


#### Then


@then(u'浏览器显示【{widget}】下拉菜单')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 30)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(@class, 'dropDownItem')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(@class, 'dropDownItem')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            break

    text | should.contain_the_substring(widget)


@then(u'浏览器显示【{widget}】菜单项')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(@class, 'dropDownItem')]").is_displayed())
    els = context.driver.find_elements_by_xpath("//*[contains(@class, 'dropDownItem')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            break

    text | should.contain_the_substring(widget)


@then(u'浏览器显示有【{widget}】设备')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 3)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]").is_displayed())


@then(u'浏览器显示【{tip}】提示')
def step_impl(context, tip):
    wait = WebDriverWait(context.driver, 30)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//span[contains(text(), '" + tip + "')]").is_displayed())


@then(u'浏览器显示【{sample_question}】与【{sample_answer}】')
def step_impl(context, sample_question, sample_answer):
    wait = WebDriverWait(context.driver, 30)
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + sample_question + "')]").is_displayed())
    wait.until(
        lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + sample_answer + "')]").is_displayed())


@then(u'iFlyOS服务端回复状态为【{resp_code}】成功')
def step_impl(context, resp_code):
    context.iflyos_client.get_result_from_event_channel_queue()
    context.ER.should_equal(context.AR, 'Status_Code', int(resp_code))


@then(u'iFlyOS服务端回复状态为【{resp_code}】错误，而且【payload】参数【code】为【{code}】')
def step_impl(context, resp_code, code):
    context.iflyos_client.get_result_from_event_channel_queue()
    context.ER.should_equal(context.AR, 'Status_Code', int(resp_code))
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Error_Code', code)


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】'
      + u'，参数【playBehavior】为【{play_behavior}】，参数【offsetInMilliseconds】为【{offset_in_milliseconds}】')
def step_impl(context, interface, directive, play_behavior, offset_in_milliseconds):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Play_Behavior', play_behavior)
    context.ER.should_equal(context.AR, 'Offset_In_Milliseconds', offset_in_milliseconds)


@then(u'iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【{'
      u'play_behavior}】，【progressReportDelayInMilliseconds】为【{progress_report_delay_in_milliseconds}】')
def step_impl(context, play_behavior, progress_report_delay_in_milliseconds):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', 'AudioPlayer')
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', 'Play')
    context.ER.should_equal(context.AR, 'Play_Behavior', play_behavior)
    context.ER.should_equal(context.AR, 'Progress_Report_Delay_In_Milliseconds',
                            int(progress_report_delay_in_milliseconds))


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，参数【playBehavior】为【{play_behavior}】')
def step_impl(context, interface, directive, play_behavior):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Play_Behavior', play_behavior)


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，TTS音频为【{tts_content}】')
def step_impl(context, interface, directive, tts_content):
    from io import BytesIO
    bytes_io = BytesIO()
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.iflyos_client.get_binary_from_event_channel_list()
    context.ER.should_not_null(context.AR, 'TTS', bytes_io)
    logging.warning("TTS:" + tts_content + " not check")


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，TTS音频为随机内容')
def step_impl(context, interface, directive):
    bytes_io = BytesIO()
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.iflyos_client.get_binary_from_event_channel_list()
    context.ER.should_not_null(context.AR, 'TTS', bytes_io)


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，参数【clearBehavior】为【{clear_behavior}】')
def step_impl(context, interface, directive, clear_behavior):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Clear_Behavior', clear_behavior)


@then(u'iFlyOS服务端下行通道回复的directive为【{interface}】，【{directive}】，参数【scheduledTime】为【{scheduled_time}】')
def step_impl(context, interface, directive, scheduled_time):
    context.iflyos_client.get_result_from_down_channel_queue()
    context.iflyos_client.get_directive_from_down_channel_list()
    context.ER.should_equal(context.AR, 'Down_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Down_Channel_Directive', directive)
    context.ER.should_contains_string(context.AR, 'Scheduled_Time', scheduled_time)
    # context.token = context.TI.sysExtEvt.payload['token']

@then(u'iFlyOS服务端下行通道回复的directive为【{interface}】，【{directive}】，参数【token】为【{token}】')
def step_impl(context, interface, directive, token):
    context.iflyos_client.get_result_from_down_channel_queue()
    context.iflyos_client.get_directive_from_down_channel_list()
    context.ER.should_equal(context.AR, 'Down_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Down_Channel_Directive', directive)
    context.ER.should_contains_string(context.AR, 'Token', token)

@then(u'iFlyOS服务端回复的directive为【{interface}】'
      + u'，【{directive}】，参数【playBehavior】为【{play_behavior}】，带Binary Audio Attachment')
def step_impl(context, interface, directive, play_behavior):
    from io import BytesIO
    bytes_io = BytesIO()
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Play_Behavior', play_behavior)
    context.ER.should_not_null(context.AR, 'Event_Channel_Audio_Data', bytes_io)


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，参数【type】为【{type}】')
def step_impl(context, interface, directive, type):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Template_Run_Time_Type', type)
    # context.token = context.TI.sysExtEvt.payload['token']

@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，参数【volume】为【{volume}】')
def step_impl(context, interface, directive, volume):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    context.ER.should_equal(context.AR, 'Volume', int(volume))

@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，参数【mute】为【{mute}】')
def step_impl(context, interface, directive, mute):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)
    if mute.lower() == 'true':
        context.ER.should_equal(context.AR, 'Mute', True)
    elif mute.lower() == 'false':
        context.ER.should_equal(context.AR, 'Mute', False)
    else:
        logging.error("non boolean value")

@then(u'iFlyOS客户端绑定成功')
def step_impl(context):
    context.auth.config.get('access_token') | should_not.empty()
    context.iflyos_client.get_result_from_event_channel_queue()
    context.ER.should_equal(context.AR, 'Status_Code', 200)


@then(u'iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为从接龙词中随机选取一个')
def step_impl(context):
    bytes_io = BytesIO()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', 'SpeechSynthesizer')
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', 'Speak')
    context.iflyos_client.get_binary_from_event_channel_list()
    context.ER.should_not_null(context.AR, 'TTS', bytes_io)
    logging.warning("TTS not check")


@then(u'iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【{text}】')
def step_impl(context, text):
    context.iflyos_client.get_result_from_down_channel_queue()
    context.iflyos_client.get_directive_from_down_channel_list()
    try:
        context.ER.should_equal(context.AR, 'Down_Channel_Interface', 'XFSpeechRecognizer')
    except BaseException:
        context.iflyos_client.get_directive_from_down_channel_list()
        context.ER.should_equal(context.AR, 'Down_Channel_Interface', 'XFSpeechRecognizer')
    context.ER.should_equal(context.AR, 'Down_Channel_Directive', 'IntermediateText')
    context.ER.should_equal(context.AR, 'Intermediate_Text', text)


@then(u'iFlyOS服务端下行通道回复的directive为【{interface}】，【{directive}】')
def step_impl(context, interface, directive):
    context.iflyos_client.get_result_from_down_channel_queue()
    context.iflyos_client.get_directive_from_down_channel_list()
    context.ER.should_equal(context.AR, 'Down_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Down_Channel_Directive', directive)


@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】')
def step_impl(context, interface, directive):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)

@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，TTS音频为【{text}】和以下内容之一')
def step_impl(context, interface, directive, text):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)

@then(u'iFlyOS服务端回复的directive为【{interface}】，【{directive}】，TTS音频为以下内容之一')
def step_impl(context, interface, directive):
    context.iflyos_client.get_directive_from_event_channel_list()
    context.ER.should_equal(context.AR, 'Event_Channel_Interface', interface)
    context.ER.should_equal(context.AR, 'Event_Channel_Directive', directive)

@then(u'清空闹钟列表')
def step_impl(context):
    context.execute_steps('''
              # 那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
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
            ''')
