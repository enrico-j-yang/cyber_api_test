# -*- coding: utf-8 -*-
# import logging
# from utility.xunfei import XunfeiSynthesis
from aip import AipSpeech
from pydub import AudioSegment

from global_variables import *
from sdk.audio_input_processor import AudioInputProcessor

cwd = os.getcwd()


class TTS:
    def __init__(self):
        # Baidu tts

        # self.tts_client = XunfeiSynthesis()
        self.tts_client = AipSpeech(BAIDU_APP_ID, BAIDU_API_KEY, BAIDU_SECRET_KEY)

    def tts(self, voice_content):
        '''
        将文字转为语音，如audio_files目录已有音频文件，则使用本地音频，否则调用百度或者讯飞的TTS接口生成音频并保存
        :param voice_content: 需要转换的文字
        :return:
        '''
        if AUDIO_FORMAT == 'AUDIO_OPUS_RATE_16000_CHANNELS_1':
            output_format = "opus_dong"
        elif AUDIO_FORMAT == 'AUDIO_L16_RATE_16000_CHANNELS_1':
            output_format = "raw"
        else:
            output_format = "opus_dong"

        if not os.path.isfile(cwd + "/audio_files/" + voice_content + ".mp3"):
            # Xunfei tts service
            # result = self.tts_client.synthesis(voice_content, aue="raw")
            # Baidu tts service
            result = self.tts_client.synthesis(voice_content, 'zh', 1, {'vol': 5, })

            if not isinstance(result, dict):
                with open(cwd + "/audio_files/" + voice_content + ".mp3", 'wb') as f:
                    f.write(result)
            else:
                return None

        if not os.path.isfile(cwd + "/audio_files/" + voice_content + ".pcm"):
            song = AudioSegment.from_mp3(cwd + "/audio_files/" + voice_content + ".mp3")
            song.export(cwd + "/audio_files/" + voice_content + ".pcm", format="raw")

        if output_format == "raw":
            return cwd + "/audio_files/" + voice_content + ".pcm"
        elif output_format == "wave":
            return AudioInputProcessor.pcm2wave(cwd + "/audio_files/" + voice_content + ".pcm",
                                                cwd + "/audio_files/" + voice_content + ".wav")
        else:
            return AudioInputProcessor.pcm2opus_dong(cwd + "/audio_files/" + voice_content + ".pcm",
                                                     cwd + "/audio_files/" + voice_content + ".opus_dong")
