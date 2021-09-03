# -*- coding: utf-8 -*-
'''
voice_input.py is step implementation file for voice_input.feature

'''
import logging
from behave import *


@given(u'iFly服务无使用任何filter')
def step_impl(context):
    context.CATI.sysExtEvt.set_filter(None)


@when(u'用户说出{audio_file}')
def step_impl(context, audio_file):
    audio_file_path = context.TI.sysExtEvt.tts(audio_file, "wave")
    context.CAAR.set_value('Text', context.CATI.sysExtEvt.recognize_intention(audio_file_path,
                                                                              context.CATI.sysExtEvt.get_filters()))


@then(u'iFly返回{expected_result}')
def step_impl(context, expected_result):
    key = 'Text'
    value = expected_result
    context.CAER.set_value(key, value)
    context.CAAR.mock_value(key, value)
    context.CAAR.get_value(key)
    logging.debug("context.CAER." + key + ": " + str(context.CAER.dict[key]))
    logging.debug("context.CAAR." + key + ": " + str(context.CAAR.dict[key]))
    assert context.CAAR.dict[key] == context.CAER.dict[key]


@given(u'iFly服务使用{audio_filter}filter')
def step_impl(context, audio_filter):
    context.CATI.sysExtEvt.set_filter(audio_filter)
