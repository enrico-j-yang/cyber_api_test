# -*- coding: utf-8 -*-
'''
voice_input.py is step implementation file for voice_input.feature

'''

from behave import *
from pyshould import *
from selenium.common.exceptions import TimeoutException
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.action_chains import ActionChains

from global_variables import *

cwd = os.getcwd()


# Given

@given(u'用户已注册讯飞开放平台账号')
def step_impl(context):
    pass


@given(u'用户已登录讯飞开放平台账号')
def step_impl(context):
    context.execute_steps('''
        假如      用户已注册讯飞开放平台账号
        当        用户打开iFlyOS开放平台首页
        那么      浏览器显示iFlyOS开放平台首页
    ''')
    try:
        wait = WebDriverWait(context.driver, 5)
        wait.until(lambda dr: dr.find_elements_by_xpath("//*[contains(@class, 'dropDownTitle')]"))
    except TimeoutException:
        context.execute_steps('''
            当        用户点击【登录】控件
            那么      浏览器显示【登录】页面
            当        用户输入正常用户名
            当        用户输入正确密码
            当        用户点击【登 录】按钮
            那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
            那么      浏览器iFlyOS开放平台首页有用户名控件
        ''')
    else:
        context.execute_steps('''
            当       用户移动到【接入控制台】菜单
            那么      浏览器显示【接入控制台】下拉菜单
            当       用户点击【接入控制台】菜单项
            那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
        ''')


# When


@when(u'用户打开iFlyOS开放平台首页')
def step_impl(context):
    context.driver.get(OPEN_IFLYOS_URL)


@when(u'用户点击【{button}】按钮')
def step_impl(context, button):
    els = context.driver.find_elements_by_xpath("//button")
    text = None
    for el in els:
        text = el.text
        if text == button:
            el.click()
            break

    text | should.contain_the_substring(button)


@when(u'用户点击【{widget}】控件')
def step_impl(context, widget):
    els = context.driver.find_elements_by_xpath("//*[contains(text(), '" + widget + "')]")
    text = None
    for el in els:
        text = el.text
        if text == widget:
            el.click()
            break

    text | should.contain_the_substring(widget)


@when(u'用户输入正常用户名')
def step_impl(context):
    platform_account = PLATFORM_ACCOUNT
    el = context.driver.find_element_by_id("username")
    el.send_keys(platform_account)


@when(u'用户输入正确密码')
def step_impl(context):
    password = PASSWORD
    el = context.driver.find_element_by_id("password")
    el.send_keys(password)


@when(u'用户点击用户名控件')
def step_impl(context):
    els = context.driver.find_elements_by_xpath("//*[contains(@class, 'dropDownTitle')]")
    for el in els:
        text = el.text
        if text == "接入控制台":
            continue
        else:
            el.click()
    pass


@when(u'用户移动到【{widget}】菜单')
def step_impl(context, widget):
    els = context.driver.find_elements_by_xpath("//*[contains(@class, 'dropDownTitle')]")
    for el in els:
        text = el.text
        if text == widget:
            hov = ActionChains(context.driver).move_to_element_with_offset(el, el.size['width'], el.size[
                'height']).move_to_element(
                el).click()
            hov.perform()
            break
    pass


# Then


@then(u'浏览器显示iFlyOS开放平台首页')
def step_impl(context):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//h1").is_displayed())
    el = context.driver.find_element_by_xpath("//h1")
    text = el.text
    text | should.equal('iFLYOS开放平台')


@then(u'浏览器显示iFlyOS接入控制台页面，显示有【{key_word}】')
def step_impl(context, key_word):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + key_word + "')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '" + key_word + "')]")
    text = el.text
    text | should.contain_the_substring(key_word)


@then(u'浏览器iFlyOS开放平台首页有【{widget}】控件')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]").is_displayed())
    el = context.driver.find_element_by_xpath("//*[contains(text(), '" + widget + "')]")
    text = el.text
    text | should.contain_the_substring(widget)


@then(u'浏览器显示【{widget}】页面')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]"))


@then(u'浏览器显示【{widget}】控件')
def step_impl(context, widget):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(text(), '" + widget + "')]"))


@then(u'浏览器iFlyOS开放平台首页有用户名控件')
def step_impl(context):
    wait = WebDriverWait(context.driver, 30)
    wait.until(lambda dr: dr.find_element_by_xpath("//*[contains(@class, 'dropDownTitle')]"))
