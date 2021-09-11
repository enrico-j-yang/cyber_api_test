# -*- coding: utf-8 -*-
'''
音频输入处理模块
'''
import os
from pydub import AudioSegment


class AudioInputProcessor:
    @staticmethod
    def pcm2opus_dong(source_file_path, destination_file_path):
        if not os.path.isfile(destination_file_path):
            import opuslib.api.encoder

            fs = open(source_file_path, 'rb')
            fd = open(destination_file_path, 'wb')
            enc = opuslib.api.encoder.create_state(16000, 1, opuslib.APPLICATION_AUDIO)

            eof = False
            while not eof:
                data = fs.read(320)
                data_size = len(data)
                if data_size < 320:
                    eof = True
                    for _ in range(data_size, 320):
                        data += bytes([0])
                enc_data = opuslib.api.encoder.encode(enc, data, 160, 320)
                enc_data_size = len(enc_data)
                fd.write(bytes([enc_data_size]))
                fd.write(enc_data)

            fd.write(bytes([0]))

            opuslib.api.encoder.destroy(enc)
            fs.close()
            fd.close()
        return destination_file_path

    @staticmethod
    def pcm2wave(source_file_path, destination_file_path):
        if not os.path.isfile(destination_file_path):
            song = AudioSegment.from_raw(source_file_path)
            song.export(destination_file_path, format="wav")
        return destination_file_path
