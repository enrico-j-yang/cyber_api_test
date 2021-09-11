# -*- coding: utf-8 -*-
# import pyaudio
import logging
import queue
import threading

logger = logging.getLogger(__file__)


class Audio(object):
    '''
    录音类(基于pyaudio)
    '''

    def __init__(self, rate=16000, frames_size=None, channels=None, device_index=None):
        '''
        录音类初始化
        :param rate:采样率
        :param frames_size:数据帧大小
        :param channels:通道数
        :param device_index:录音设备id
        '''
        self.sample_rate = rate
        self.frames_size = frames_size if frames_size else rate / 100
        self.channels = channels if channels else 1

        self.sinks = []
        self.t = threading.Thread(target=self.mock_recorder)
        self.t.daemon = True
        self.mic_queue = queue.Queue()
        self.recording = True

    def start(self):
        '''
        开始录音
        :return:
        '''
        logging.info(u'[播放器状态]开始录音..........')
        self.recording = True
        self.t.start()

    def stop(self):
        '''
        结束录音
        :return:
        '''
        logging.info(u'[播放器状态]结束录音..........')
        self.recording = False
        self.t.join()

    def link(self, sink):
        '''
        绑定录音接收实体
        :param sink: 录音接收实体
        :return:
        '''
        if hasattr(sink, 'put') and callable(sink.put):
            self.sinks.append(sink)
        else:
            raise ValueError('Not implement put() method')

    def unlink(self, sink):
        '''
        录音实体解除绑定
        :param sink: 录音接收实体
        :return:
        '''
        self.sinks.remove(sink)

    def __callback(self, in_data, frame_count, time_info, status):
        '''
        录音数据(pmc)回调
        :param in_data:录音数据
        :param frame_count:
        :param time_info:
        :param status:
        :return:
        '''
        for sink in self.sinks:
            logging.debug("sink.put(in_data)")
            sink.put(in_data)
        return None

    def put_data(self, in_data, frame_count=1, time_info=0.01, status=None):
        logging.debug("mic_queue.put")
        self.mic_queue.put((in_data, frame_count, time_info, status))

    def mock_recorder(self):
        while self.recording:
            try:
                mic_data = self.mic_queue.get(timeout=1.0)
            except queue.Empty:
                pass
            else:
                in_data = mic_data[0]
                frame_count = mic_data[1]
                time_info = mic_data[2]
                status = mic_data[3]
                self.__callback(in_data, frame_count, time_info, status)
