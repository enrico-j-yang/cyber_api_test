# -*- coding: utf-8 -*-
# language: zh-CN

功能: iFlyOS XXX用户环境识别率测试
    ============================================


    @NoFilter
    场景大纲:   无filter识别率
        假如    iFly服务无使用任何filter
        当      用户说出<audio_files>
        那么    iFly返回<expected_result>

        例子:     音频文件与预期结果
            | audio_files  | expected_result |
            | 今天天气怎么样.opus | 今天天气怎么样         |
        #|   回家.wav            |   回家               |
        #|   去公司.wav           |   去公司             |
        #|   放大地图.wav         |   放大地图           |
        #|   打电话给周杰伦.wav    |   打电话给周杰伦      |


    @NoiseReduction
    场景大纲:   降噪识别率
        假如    iFly服务使用<filter_name>filter
        当      用户说出<audio_files>
        那么    iFly返回<expected_result>

        例子:     使用filter，音频文件与预期结果
            | filter_name | audio_files | expected_result |
            | 降噪          | 回家.wav      | 回家              |
            | 降噪          | 去公司.wav     | 去公司             |
            | 降噪          | 放大地图.wav    | 放大地图            |
            | 降噪          | 打电话给周杰伦.wav | 打电话给周杰伦         |