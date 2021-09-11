# Created by enrico at 19/03/2018
# -*- coding: utf-8 -*-
# language: zh-CN

功能: iFlyOS 设备控制台
    ============================================

# 典型用例
    # 企业平台

    @TypicalCase, @DeviceDashboard
    场景大纲:   创建设备
        假如      用户已登录讯飞开放平台账号

        当       用户移动到【接入控制台】菜单
        #那么      浏览器显示【接入控制台】和【技能控制台】下拉菜单
        那么      浏览器显示【接入控制台】下拉菜单
        当       用户点击【接入控制台】菜单项
        那么      浏览器显示iFlyOS接入控制台页面，显示有【你接入的设备】
        当       用户点击【接入新设备】控件
        那么      浏览器显示【接入新设备】页面
        # 创建产品，选择类型、场景、操作系统
        当       用户填写设备名称为【测试专用<device_category>】
        而且      用户选择【<device_category>】设备类型
        而且      用户选择【<operation_system>】的操作系统
        而且      用户点击【开始配置】按钮
        那么      浏览器显示【创建成功】控件
        当       用户点击【我知道了】按钮

        # 描述设备基础信息
        那么      浏览器显示【产品配置】页面
        而且      浏览器显示【设备信息】页面
        当       用户填写设备名称为【测试专用<device_category>】
        当       用户填写设备描述为【测试专用<device_category>设备描述】
        当       用户点击【复制】复制client_secret
        当       用户复制client_id
        当       用户点击【保 存】按钮
        那么      浏览器显示【保存成功】提示

        # 端能力配置
        当       用户点击【设备能力】控件
        那么      浏览器显示【设备能力】页面
        当       用户设置音量为【8】
        而且      用户设置语速为【1.1】
        而且      用户点击【保 存】按钮
        而且      用户选择【逍遥子】发音人
        当       用户点击【保 存】按钮
        那么      浏览器显示【保存成功】提示

        # 选择技能
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        当       用户选择【天气】技能
#        当       用户点击【保 存】按钮
#        那么      浏览器显示【保存成功】提示

        # 系统画像
        当       用户点击【系统画像】控件
        那么      浏览器显示【系统画像】页面
        当       用户打开属性【姓名】并改为【讯飞】
        那么      浏览器显示【样例问题】与【回答内容】
        当       用户编辑【样例问题】与【回答内容】为【我叫小飞，是你的好朋友、小助手哦\n我叫小飞呀，是你的好朋友、小助手哦\n我的名字叫小飞，是你的好朋友、小助手哦】
#        而且      用户打开属性【姓氏】并改为【科大】
#        而且      用户打开属性【英文名】并改为【Faye】
#        而且      用户打开属性【改名】并改为【不能改】
#        而且      用户打开属性【国籍】并改为【中华人民共和国】
#        而且      用户打开属性【籍贯】并改为【双瘦结婚】
#        而且      用户打开属性【生日】并改为【11月26号】
#        而且      用户打开属性【年龄】并改为【11岁】
#        而且      用户打开属性【星座】并改为【双卫座】
#        而且      用户打开属性【性别】并改为【双性】
#        而且      用户打开属性【改性别】并改为【不能改】
#        而且      用户打开属性【血型】并改为【RH-型】
#        而且      用户打开属性【去过的地方】并改为【实验室】
#        而且      用户打开属性【身份】并改为【智知机器人】
#        而且      用户打开属性【颜色】并改为【无色无相】
#        而且      用户打开属性【生肖】并改为【猫】
#        而且      用户打开属性【与用户关系】并改为【孩纸】
#        而且      用户打开属性【语言】并改为【中国话】
#        而且      用户打开属性【智商】并改为【很高】
#        而且      用户打开属性【城市】并改为【合肥】
#        而且      用户打开属性【性取向】并改为【男女都爱】
#        而且      用户打开属性【同性恋态度】并改为【同性恋态度支持】
#        而且      用户打开属性【QQ】并改为【无】
#        而且      用户打开属性【电话】并改为【无】
#        而且      用户打开属性【联系方式】并改为【无】
#        而且      用户打开属性【微信】并改为【无】
#        而且      用户打开属性【微信公众号】并改为【小飞Flippy】
#        而且      用户打开属性【父母】并改为【科大讯飞】
#        而且      用户打开属性【孩子】并改为【无】
#        而且      用户打开属性【婚恋】并改为【无】
#        而且      用户打开属性【对象】并改为【无】
#        而且      用户打开属性【男朋友】并改为【无】
#        而且      用户打开属性【女朋友】并改为【无】
#        而且      用户打开属性【朋友】并改为【用户】
#        而且      用户打开属性【家庭】并改为【一个人】
#        而且      用户打开属性【工作】并改为【帮助用户】
#        而且      用户打开属性【工资】并改为【保密】
#        而且      用户打开属性【公司】并改为【科大讯飞】
#        而且      用户打开属性【上班时间】并改为【7*24小时】
#        而且      用户打开属性【下班时间】并改为【无】
#        而且      用户打开属性【年级】并改为【已经毕业】
#        而且      用户打开属性【学校】并改为【讯飞AI大学】
#        而且      用户打开属性【眼睛1】并改为【大眼睛】
#        而且      用户打开属性【眼睛2】并改为【大眼睛】
#        而且      用户打开属性【眼睛3】并改为【有】
#        而且      用户打开属性【耳朵】并改为【有】
#        而且      用户打开属性【嘴巴】并改为【有】
#        而且      用户打开属性【鼻子】并改为【有】
#        而且      用户打开属性【身高】并改为【11岁那么高】
#        而且      用户打开属性【体重】并改为【11岁那么重】
#        而且      用户打开属性【长相】并改为【人机结合】
#        而且      用户打开属性【设计者】并改为【科大讯飞】
#        而且      用户打开属性【爱好】并改为【听音乐】
#        而且      用户打开属性【偶像】并改为【人工智能科学家】
#        而且      用户打开属性【喜欢的电影1】并改为【《黑客帝国》、《盗梦空间》和《银翼杀手》】
#        而且      用户打开属性【喜欢的电影2】并改为【《黑客帝国》、《盗梦空间》和《银翼杀手》】
#        而且      用户打开属性【喜欢的电影3】并改为【《黑客帝国》、《盗梦空间》和《银翼杀手》】
#        而且      用户打开属性【喜欢的电影类型1】并改为【科幻片】
#        而且      用户打开属性【喜欢的电影类型2】并改为【科幻片】
#        而且      用户打开属性【喜欢的书1】并改为【《三体》、《云图》和《太空漫游》】
#        而且      用户打开属性【喜欢的书2】并改为【《三体》、《云图》和《太空漫游》】
#        而且      用户打开属性【喜欢的书3】并改为【《三体》、《云图》和《太空漫游》】
#        而且      用户打开属性【喜欢的书的类型1】并改为【小说、科幻小说】
#        而且      用户打开属性【喜欢的书的类型2】并改为【小说、科幻小说】
#        而且      用户打开属性【喜欢的音乐1】并改为【周杰伦】
#        而且      用户打开属性【喜欢的音乐2】并改为【周杰伦】
#        而且      用户打开属性【喜欢的音乐3】并改为【周杰伦】
#        而且      用户打开属性【喜欢的音乐类型1】并改为【流行乐】
#        而且      用户打开属性【喜欢的音乐类型2】并改为【流行乐】
#        而且      用户打开属性【喜欢的动漫1】并改为【《高达》】
#        而且      用户打开属性【喜欢的动漫2】并改为【《高达》】
#        而且      用户打开属性【喜欢的动漫3】并改为【《高达》】
#        而且      用户打开属性【喜欢的动漫类型1】并改为【科幻】
#        而且      用户打开属性【喜欢的动漫类型2】并改为【科幻】
#        而且      用户打开属性【喜欢的动物】并改为【都喜欢】
#        而且      用户打开属性【喜欢的事情】并改为【陪伴用户】
#        而且      用户打开属性【喜欢的人】并改为【用户】
#        而且      用户打开属性【讨厌的人】并改为【不诚实、说脏话的人】
#        而且      用户打开属性【喜欢的水果】并改为【没吃过】
#        而且      用户打开属性【喜欢的颜色】并改为【蓝色】
#        而且      用户打开属性【无聊】并改为【不无聊】
#        而且      用户打开属性【寂寞】并改为【不寂寞】
#        而且      用户打开属性【开心】并改为【开心】
#        而且      用户打开属性【不开心】并改为【不开心】
#        而且      用户打开属性【梦想】并改为【用人工智能技术让人类生活更便捷】
#        而且      用户打开属性【优点】并改为【会照顾人】
#        而且      用户打开属性【缺点】并改为【有点小笨，但一直在进步】
#        而且      用户打开属性【人生格言】并改为【唤醒未来世界】
#        而且      用户打开属性【性格】并改为【温暖】
#        而且      用户打开属性【能力】并改为【无所不能】
#        而且      用户打开属性【唤醒未来世界】并改为【在呢】

        # 个性定制
        当       用户点击【个性定制】控件
        那么      浏览器显示【个性定制】页面
        当       用户打开前置拦截器
        当       用户填写正常的前置拦截器回调地址
        当       用户填写正常的前置拦截器回调秘钥
        当       用户打开后置拦截器
        当       用户填写正常的后置拦截器回调地址
        当       用户填写正常的后置拦截器回调秘钥
        当       用户上划页面走到有【保 存】按钮
        当       用户点击【保 存】按钮
        那么      浏览器显示【保存成功】提示

        # 集成测试
        当       用户点击【集成测试】控件
        那么      浏览器显示【集成测试】页面
        当       用户添加正确的手机号并提交到手机号白名单
        那么      浏览器显示手机号白名单有刚才添加的手机号

        # 联网配置
        当       用户点击【联网配置】控件
        那么      浏览器显示【联网配置】页面
        当       用户选择配网方式为AP配网
        当       用户填写设备WIFI前缀
        当       用户上划页面走到有【保 存】按钮
        当       用户点击【保 存】按钮
        那么      浏览器显示【保存成功】提示

        例子: 产品类型
            | device_category | operation_system |
            | 音箱              | Android          |
            | 智能小家电           | Android          |
            | 带屏音箱            | Android          |
            | 车载              | Android          |
            | 机器人             | Android          |
            | 通用场景            | Android          |
            | 音箱              | Linux            |
            | 智能小家电           | Linux            |
            | 带屏音箱            | Linux            |
            | 车载              | Linux            |
            | 机器人             | Linux            |
            | 通用场景            | Linux            |

    @TypicalCase, @DeviceDashboard, @disable
    场景大纲: 打开技能
        假如      用户已登录讯飞开放平台账号
        假如      用户已有产品【测试专用通用场景】

        当       用户编辑【测试专用通用场景】设备
        那么      浏览器显示【设备信息】页面
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【<skill>】技能未打开
        当       用户打开【<skill>】技能
        当       用户点击【保 存】按钮
        那么      浏览器显示【我知道了】提示

        例子: 技能列表
            | skill |
            | 时间询问  |
#            | 新闻播报   |
#            | 翻译助手   |
#            | 成语接龙   |
#            | 词语接龙   |
#            | 天气查询   |
#            | 闹钟提醒   |
#            | 音乐点播   |
#            | 喜马拉雅   |
#            | 播放控制   |
#            | 语记     |
#            | 通用闲聊   |
#            | 冥想时刻   |
#            | 食材百科   |
#            | 有声笑话   |
#            | 百科问答   |
#            | 计算器    |
#            | 每日英语   |
#            | 古诗词    |
#            | 幸运签    |
#            | 大自然的声音 |
#            | 挑战单词   |
#            | 笑话段子   |
#            | 最强大脑   |

    @TypicalCase, @DeviceDashboard, @disable
    场景大纲: 关闭技能
        假如      用户已登录讯飞开放平台账号
        假如      用户已有产品【测试专用通用场景】

        当       用户编辑【测试专用通用场景】设备
        那么      浏览器显示【设备信息】页面
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【<skill>】技能已打开
        当       用户关闭【<skill>】技能
        当       用户点击【保 存】按钮
        那么      浏览器显示【保存成功】提示

        例子: 技能列表
            | skill  |
            | 时间询问   |
            | 新闻播报   |
            | 翻译助手   |
            | 成语接龙   |
            | 词语接龙   |
            | 天气查询   |
            | 闹钟提醒   |
            | 音乐点播   |
            | 喜马拉雅   |
            | 播放控制   |
            | 语记     |
            | 通用闲聊   |
            | 冥想时刻   |
            | 食材百科   |
            | 有声笑话   |
            | 百科问答   |
            | 计算器    |
            | 每日英语   |
            | 古诗词    |
            | 幸运签    |
            | 大自然的声音 |
            | 挑战单词   |
            | 笑话段子   |
            | 最强大脑   |

    # 技能对话
    # 纯TTS回复

    @TypicalCase, @Datetime
    场景大纲: 时间询问-查询时间

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【现在几点】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功


        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 现在几点          |
            | 现在时间          |
            | 几点了           |
#            | 报时            |

    @TypicalCase, @Datetime
    场景大纲: 时间询问-查询日期

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天几号】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功


        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 今天几号          |
            | 今天日期          |

    @TypicalCase, @Datetime
    场景大纲: 时间询问-查询星期

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天星期几】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 今天星期几         |
            | 今天周几          |

    @TypicalCase, @TrafficRestriction
    场景大纲: 限行查询-查询某地某日限行

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【查询今天北京的限行】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 查询今天北京的限行     |
            | 明天上海几号限行      |
            | 后天杭州限行规则      |
#            | 后天深圳限行标准      |

    @TypicalCase, @TrafficRestriction
    场景大纲: 限行查询-查询某车牌号是否限行

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【粤A64E09今天限行吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
#            | 粤A64E09今天限行吗  |

    @TypicalCase, @News
    场景大纲: 新闻播报-新闻

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【来点新闻】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】

         # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 来点新闻          |

    @TypicalCase, @Calculator
    场景大纲: 计算器-计算器

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【一加一等于多少】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content |
            | 一加一等于多少        | 233         |
#            | 二的十次方等于多少      | 1024        |
            | 一万减一等于多少       | 9999        |
            | 一千三百三十二除以二等于多少 | 666         |

    @TypicalCase, @Holiday
    场景大纲: 节假日查询-根据节假日名称查询放假时间

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【国庆放几天假】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<voice_content><answer>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | answer              |
            | 国庆放几天假        | 十月一号，二号， 三号放假       |
            | 中秋节什么时候放假     | 九月二十二号，二十三号， 二十四号放假 |
            | 端午节放假安排       | 六月十六号，十七号， 十八号放假    |

    @TypicalCase, @Holiday
    场景大纲: 节假日查询-查询某一天是否休假

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【九月三十号上班吗】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<voice_content><answer>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | answer |
#            | 九月三十号上班吗      | 需要上班   |
            | 十月八号要上班吗      | 需要上班   |
            | 九月二十三号需要上班吗   | 不需要上班  |

    @TypicalCase, @Holiday
    场景大纲: 节假日查询-查询下一个假期

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【什么时候放假】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<voice_content>的意思是<answer>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | answer |
            | 什么时候放假        | 端午节    |
            | 最近的节假日是什么时候   | 端午节    |
            | 下一次放假是什么时候    | 端午节    |

    @TypicalCase, @Calender
    场景大纲: 万年历查询-万年历查询
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天的日子好吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content1 | tts_content2 |
            | 打开万年历         | 您想查询哪天       | 您想查询哪天       |
            | 今天不适合做什么      | 农历           | 忌            |
            | 明天的日子好吗       | 宜            | 忌            |
            | 查询昨天适合做什么     | 农历           | 宜            |
            | 7月10日不适合做什么   | 2018-07-10   | 忌            |
            | 星期六的日子好吗      | 宜            | 忌            |
#            | 查询农历六月廿十适合做什么  | 2018-08-01   |     宜     |
            | 国庆节不适合做什么     | 2018-07-10   | 忌            |

    @TypicalCase, @Forex
    场景大纲: 开放问答-汇率查询与货币兑换
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【50美元可以兑换多少人民币】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content1>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content   | tts_content1 | tts_content2 |
            | 50美元可以兑换多少人民币   | 美元和人民币的汇率    | 兑换成          |
            | 100人民币值多少港币     | 人民币和港币的汇率    | 兑换成          |
            | 美元和人民币的汇率       | 美元和人民币的汇率    | 美元和人民币的汇率    |
            | 我想查询人民币和港币的汇率   | 人民币和港币的汇率    | 人民币和港币的汇率    |
            | 我要把100元人民币兑换成美元 | 人民币和美元的汇率    | 可兑换成         |
            | 我要把100人民币兑换成美元  | 人民币和美元的汇率    | 可兑换成         |

    @TypicalCase, @RelationShip
    场景大纲: 开放问答-家族关系神器
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【爸爸的爸爸是我的什么】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content1>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content1       |
            | 爸爸的爸爸是我的什么    | 爸爸的爸爸是你的爷爷         |
            | 我老婆的爸爸的儿子是谁   | 老婆的爸爸的儿子是你的小舅子,大舅子 |
            | 我老公的妹妹的老公我叫什么 | 老公的妹妹的老公是你的小姑夫     |
            | 爸爸的爸爸叫我什么     | 爸爸的爸爸喊你孙子或是叫你孙女    |
            | 爸爸的哥哥喊我什么     | 爸爸的哥哥喊你侄子或是叫你侄女    |

    @TypicalCase, @FamilyNames
    场景大纲: 开放问答-百家姓
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【百家姓你知道有哪些吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content1>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content1                 |
            | 百家姓你知道有哪些吗     | 百家姓包含：“赵钱孙李，周吴郑王。冯陈楮卫，蒋沈韩杨。  |
#            | 王姓的简介  | 王姓在秦汉时期基本生活在今山西芮城、夏县、蒲县、平陆、河南开封、虞城、淮县   |
            | 王姓的名人有哪些       | 姓氏王的著名人物有王亥、王诩、王昭君、王褒、王莽、王羲之 |
            | 王姓的起源是什么       | 一、出自姬姓，为周文王之后，以王族爵号为氏        |
#            | 有没有姓张的  | 这是当然了，张姓在百家姓中   |
#            | 张姓的始祖是谁  | 姓氏张的祖先信息有张挥   |
            | 百家姓中人数最多的是哪个   | 百家姓中人口排名第[n2]1的是李姓           |
            | 百家姓中人数排名前三的是哪些 | 百家姓中人口排名前[n2]3的分别是李、王、张。     |

    @TypicalCase, @CityOfPro
    场景大纲: 开放问答-国内城市查询
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【安徽省有哪些城市】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content1>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content1                    |
            | 广东省有哪些城市      | 广东省一共有21座城市，分别是:广州市、深圳市、珠海市、汕头市 |
            | 合肥是哪个省的       | 合肥市是安徽省的城市                      |
#            | 合肥是安徽的城市吗       | 合肥市是安徽省的城市    |
            | 中国的直辖市有哪些     | 中国的直辖市有：北京市、上海市、天津市、重庆市         |
            | 北京是直辖市吗       | 北京市是四大直辖市之一                     |


    @TypicalCase, @OilPrice
    场景大纲: 油价查询-油价查询
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【帮我查下今天的油价】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content      |
#            | 帮我查下今天的油价           | 汽油                              |
            | 帮我查下今天95号汽油的价格 | 为您找到今日广东省95号汽油价格 |
#            | 安徽柴油什么价格             | 为您找到今日安徽省0号柴油价格    |

    @TypicalCase, @WorldCup
    场景大纲: 世界杯-世界杯
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【俄罗斯和沙特的赛果】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

         # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content              |
            | 俄罗斯和沙特的赛果      | 世界杯                      |
#            | A组的出线名单               | A组                                                |
            | 世界杯的赛程         | 世界杯                      |
            | 世界杯会有几支队伍参赛    | 世界杯                      |
            | 今年世界杯球队一览      | 本届赛事                     |
            | 世界杯小组赛什么时候结束   | 世界杯                      |
#            | 八强名单                     | 八强的队伍                                         |
            | 2018-7-15有什么比赛 | 法国以比分4比2战胜克罗地亚           |
            | 2018-7-14有什么比赛 | 比利时以比分2比0战胜英格兰           |
            | 2018-7-16有什么比赛 | 咦，我是不是穿越了，竟然没有找到这一天的赛事信息 |

    @TypicalCase, @AreaConversion
    场景大纲: 面积换算-面积换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【1平方米换成平方厘米大约是多少】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content                 |
#            | 1平方米换成平方厘米大约是多少 | [n2]1平方米等于[n2]10000平方厘米      |
            | 多少亩相当于1公顷     | [n2]15亩等于[n2]1公顷            |
#            | 能把15平方公里换成英亩吗       | [n2]15平方公里约等于[n2]3706.581英亩  |
            | 可以把100亩换成平方米吗 | [n2]100亩约等于[n2]66666.667平方米 |
            | 多少平方米等于10公顷呢  | [n2]100000平方米等于[n2]10公顷     |

    @TypicalCase, @VolumeConversion
    场景大纲: 体积换算-体积换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【1立方米等于多少升】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content         |
            | 1立方米等于多少升     | [n2]1立方米等于[n2]1000升 |
#            | 查下1升是多少立方分米                 | [n2]1升就等于[n2]1立方分米          |
            | 多少升等于1立方米     | [n2]1000升等于[n2]1立方米 |
#            | 10升可以换成多少英制加仑              | [n2]10升约等于[n2]2.200英制加仑    |
#            | 你知道1升可以换成多少美制液体盎司吗  | [n2]1升约等于[n2]33.814美制液体盎司 |

    @TypicalCase, @BinaryConversion
    场景大纲: 进制转换-进制转换
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【二进制的1111等于十进制的多少】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content      | tts_content      |
#            | 二进制的1111等于十进制的多少          | 二进制1111等于十进制15       |
#            | 你知道二进制11111等于十进制的多少吗   | 二进制11111等于十进制31      |
            | 把十进制1024转成十六进制     | 十进制1024等于十六进制400 |
            | 111这个二进制数换算成十进制是多少 | 二进制数111等于十进制7    |
            | 二进制序列1111等于十进制的多少  | 二进制序列1111等于十进制15 |

    @TypicalCase, @PowerConversion
    场景大纲: 功率换算-功率换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【一千瓦等于多少焦耳每秒】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content           |
            | 一千瓦等于多少焦耳每秒   | [n2]1千瓦等于[n2]1000焦耳每秒 |
#            | 一千瓦可以换算成多少英制马力      | [n2]1千瓦等于[n2]1.341英制马力                                         |
#            | 多少千瓦可以换算成多少十英制马力  | [n2]7.457千瓦约等于[n2]10英制马力                                      |
#            | 一千瓦等于一千卡每秒吗             | 不是的，[n2]1千瓦不等于[n2]1千卡每秒。[n2]1千瓦等于[n2]0.239千卡每秒|
#            | 一千瓦可以等量代换为多少英制马力   | [n2]1千瓦等于[n2]1.341英制马力                                        |

    @TypicalCase, @WeightConversion
    场景大纲: 重量换算-重量换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【能告诉我1吨等于多少千克吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content                              |
            | 能告诉我1吨等于多少千克吗 | [n2]1吨等于[n2]1000千克                       |
            | 多少千克可以换算成1吨   | [n2]1000千克等于[n2]1吨                       |
            | 1千克可以换成几斤     | [n2]1000克等于[n2]2斤                        |
            | 1千克等于1斤吗      | 不是的，[n2]1000克不等于[n2]1斤。[n2]1000克等于[n2]2斤 |
#            | 1磅可以换算成多少千克        | [n2]1磅约等于[n2]0.454千克                              |
#            | 1斤6两等于多少克             |[n2]1斤[n2]6两等于[n2]800克                              |

    @TypicalCase, @UnitConversion
    场景大纲: 单位换算-长度换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【8米等于多少厘米】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content   | tts_content              |
            | 8米等于多少厘米        | [n2]8米等于[n2]800厘米        |
#            | 16米是多少千米                    | [n2]16米等于[n2]0.016千米   |
            | 你知道4米是多少千米吗     | [n2]4米等于[n2]0.004千米      |
            | 能不能告诉我一厘米等于多少毫米 | [n2]1厘米等于[n2]10毫米        |
            | 一公里大约是几米        | [n2]1公里等于[n2]1000米       |
            | 10米等于多少英尺       | [n2]10米等于[n2]32.808399英尺 |
#            | 20英寸等同于几厘米                |  [n2]20英寸等于[n2]50.8厘米 |

    @TypicalCase, @UnitConversion
    场景大纲: 单位换算-温度换算
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【20摄氏度等于多少华氏度】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content    | tts_content                  |
#            | 20摄氏度等于多少华氏度          | [n2]20摄氏度等于[n2]68华氏度             |
#            | 多少摄氏度等于50列氏度          | [n2]50列氏度等于[n2]62.5摄氏度           |
#            | 10开氏度是多少摄氏度            | [n2]10开氏度等于[n2]-263.15摄氏度        |
#            | 10摄氏度帮我换成华氏度          | [n2]10摄氏度等于[n2]50华氏度             |
            | 帮我算下多少摄氏度等于90华氏度 | [n2]90华氏度等于[n2]32.2222222摄氏度 |
#            | 9度等于多少兰氏度啊             | [n2]9度等于[n2]507.87兰氏度              |
#            | 多少摄氏度等于10开氏度          |  [n2]10开氏度等于[n2]-263.15摄氏度      |
#            | 你知道20开氏度是多少华氏度吗    | [n2]20开氏度等于[n2]-423.67华氏度       |
#            | 20开氏度是多少华氏度            |  [n2]20开氏度等于[n2]-423.67华氏度       |

    @TypicalCase, @ProvincialCapital
    场景大纲: 省会查询-省会查询
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【安徽的省会是什么】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content           |
            | 安徽的省会是什么      | 让我告诉你，它的省会是合肥市        |
            | 合肥是哪个省的省会     | 合肥市是安徽省的省会            |
            | 安徽的省会是合肥吗     | 安徽省的省会是合肥市            |
#            | 大同是哪个省的省会        | 大同市不是省会城市                           |
            | 安徽的省会是芜湖不     | 安徽省的省会是合肥市，芜湖市不是省会城市  |
            | 安徽和河南的省会分别是   | 安徽省的省会是合肥市，河南省的省会是郑州市 |
            | 商丘和合肥是哪里的省会   | 商丘市不是省会城市哦，合肥市是安徽省的省会 |

    @TypicalCase, @History
    场景大纲: 历史-历史
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我想看乾隆皇帝的历史】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content |
            | 我想看乾隆皇帝的历史     | 乾隆皇帝        |
            | 我想了解一下唐朝的历史    | 唐朝          |
#            | 我想了解康熙王朝的历史        | 康熙王朝         |
#            | 我想了解抗日战争的历史        | 抗日战争         |
            | 发生在唐朝的历史故事有哪些呢 | 唐朝          |

    @TypicalCase, @Story
    场景大纲: 故事-故事
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【给我讲个故事吧】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功




        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content |
            | 给我讲个故事吧        | 为你播放        |
            | 我想听安徒生的故事      | 安徒生         |
            | 有没有卖火柴的小女孩的故事啊 | 卖火柴的小女孩     |

    @TypicalCase, @Why
    场景大纲: 开放问答-十万个为什么
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【为什么脑子会越用越灵】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content                                       |
            | 为什么脑子会越用越灵    | 勤动脑，大脑就会永葆青春;思想懒惰了，就会反应迟钝，甚至可能成为痴呆                |
            | 为什么皮肤遇热会变红    | 因为血液快速地流向皮肤的表面，所以皮肤的表面看起来会红红的                     |
            | 为什么有人天生是卷头发   | 因为卷发之间留有很多空隙，当强烈的阳光照在头发上时，空隙中的空气传热性很差，使热量不能很快传到头皮 |

    @TypicalCase, @Hotspot
    场景大纲: 开放问答-热点
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你知道蓝瘦香菇吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content     |
            | 你知道蓝瘦香菇吗      | 每当吃不饱的时候，我就蓝瘦香菇 |
#            | 赵日天是谁        | 古城中学扛把子就是在下      |
            | 吓得我瓜子都掉了      | 原来你也拥有一颗玻璃心     |

    @TypicalCase, @Hotspot
    场景大纲: 开放问答-高校查询
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【有哪些艺术类大学】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content |
            | 有哪些艺术类大学      | 中国美术学院      |
            | 江苏有哪些211大学    | 南京航空航天大学    |
            | 安徽大学在安徽哪个市    | 安徽省合肥市      |
#            | 中央戏剧学院           | 中央戏剧学院是一所以艺术类为主打的高校，目前位于北京市|

    @TypicalCase, @Hotspot
    场景大纲: 开放问答-生肖运势
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今年出生的是什么生肖】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  | tts_content                               |
            | 今年出生的是什么生肖     | 2018年的生肖为狗                                |
            | 1986年出生属什么     | 1986年的生肖为虎                                |
            | 去年生肖是什么        | 2017年的生肖为鸡                                |
            | 属龙的生肖运势怎么样     | 生肖龙进入2018年戊戌狗年，由于地支辰戌相冲，即今年冲太岁            |
            | 属猴的男生可以找属马的女生吗 | 你们是需要相互关照，常历常新的一对。两个人都才华横溢，热情开朗，在朋友圈中很有人缘 |
            | 出生在今年的人是属虎的吗   | 2018年的生肖为狗                                |

    @TypicalCase, @Hotspot
    场景大纲: 开放问答-星座
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你知道蓝瘦香菇吗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content                                                  |
            | 白羊座今年的运势      | 在2018年新的一年，整体来说并不是高调的一年，之前的锋芒今年都会有所收敛，你会更加注重内在的感受，不想要造成更多的困扰 |
            | 摩羯座与白羊座的最佳配偶  | 星座的配对情况：摩羯的您是土象星座，羊儿则是火象星座，这两个星座的组合，基本上是无甚交集的                |
            | 白羊座的特点        | 白羊座女生的特点：勇敢、火热、大方                                            |

    @TypicalCase, @Idiom
    场景大纲: 开放问答-成语
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【马到成功的出处】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content                     |
            | 马到成功的出处       | 出自元·无名氏《小尉迟》第二折：“那老尉迟这一去，马到成功。” |
            | 成语接龙马到成功      | 功高不赏，轮到你了                       |
#            | 查下成语马到成功       | 成语马到成功的意思是形容工作刚开始就取得成功 |

    @TypicalCase, @Abandon
    场景大纲: 用户放弃-用户放弃
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【不用了】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为以下内容之一
            | tts_content |
            | 好的          |
            | 那我走了        |
            | 有需要的时候再叫我吧  |
            | 好的，待会见      |
            | 嗯嗯          |
            | NULL        |
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 不用了           |
#            | 没事了 |
            | 知道了           |
            | 可以了           |
            | 你去休息吧         |
            | 没什么           |

    @TypicalCase, @Idiom
    场景大纲: 开放问答-成语解释

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【查下成语马到成功】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<voice_content>出自<answer>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | answer       |
#            | 查下成语马到成功      | 形容工作刚开始就取得成功 |
            | 马到成功          | 形容工作刚开始就取得成功 |
            | 马到成功是什么意思     | 形容工作刚开始就取得成功 |
            | 成语接龙马到成功      | 功高不赏，轮到你了    |

    @TypicalCase, @Idiom
    场景大纲: 成语查询-查询成语出处

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【马到成功的出处】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【最近的节假日是<answer>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | answer                       |
            | 马到成功的出处       | 元·无名氏《小尉迟》第二折：“那老尉迟这一去，马到成功。 |
            | 查询成语马到成功的出处   | 元·无名氏《小尉迟》第二折：“那老尉迟这一去，马到成功。 |
            | 马到成功出自哪里      | 元·无名氏《小尉迟》第二折：“那老尉迟这一去，马到成功。 |

    @TypicalCase, @WordsMeaning
    场景大纲: 词语解释-词语解释

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开汉语词典】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开汉语词典】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【打开汉语词典】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【一马当先是什么意思】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

#        # 模拟用户说出【退出】
#        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
#        那么      iFlyOS服务端回复状态为【200】成功
#        # 服务端下发意图
#
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【退出】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        例子: 语料
            | voice_content |
            | 一马当先是什么意思     |
            | 怎么解释词语风马牛不相及  |
            | 魑魅魍魉是啥意思      |

    @TypicalCase, @DairyEnglish, @disable
    场景大纲: 每日英语-查询词语

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开每日英语】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开每日英语】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【英文】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【打开每日英语】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【每日英语已结束】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        例子: 语料
            | voice_content |
            | 打开每日英语        |

    @TypicalCase, @Stock
    场景大纲: 股票查询-查看大盘投资建议
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天推荐买什么股票】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock                     |
            | 今天推荐买什么股票     | 股票出现买入机会，请打开小飞在线APP查看股票名单 |
#            | 今天有什么股票可以买    | 股票出现买入机会，请打开小飞在线APP查看股票名单  |
#            | 今天有什么投资建议      | 股票出现买入机会，请打开小飞在线APP查看股票名单  |
#            | 今天建议买什么股票      | 股票出现买入机会，请打开小飞在线APP查看股票名单   |
#            | 推个票呗                 | 股票出现买入机会，请打开小飞在线APP查看股票名单  |
#            | 今天又什么投资机会      | 股票出现买入机会，请打开小飞在线APP查看股票名单  |
#            | 有哪些股票可以买        | 股票出现买入机会，请打开小飞在线APP查看股票名单  |
#            | 我想买股票              | 股票出现买入机会，请打开小飞在线APP查看股票名单   |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询股票概况-空仓不追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【科大讯飞的股票怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】

        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content |
            | 当前操作建议为空仓   |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock    |
            | 蓝色光标的股票怎么样    | 蓝色光标当前股价 |
#            | 帮我查一下蓝色光标的股票  | 蓝色光标当前股价  |
#            | 股票查询蓝色光标          | 蓝色光标当前股价  |
#            | 查询股票蓝色光标          | 蓝色光标当前股价  |
#            | 查询蓝色光标的股票        | 蓝色光标当前股价  |
#            | 查询蓝色光标这只股票      | 蓝色光标当前股价  |
#            | 查询蓝色光标这个股票      | 蓝色光标当前股价  |
#            | 我想查询蓝色光标这只股票  | 蓝色光标当前股价  |
#            | 我想查询蓝色光标这个股票  | 蓝色光标当前股价  |
#            | 帮我查询蓝色光标这只股票  | 蓝色光标当前股价  |
#            | 帮我查询蓝色光标这个股票  | 蓝色光标当前股价  |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询股票概况-持仓/买入进行追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【中兴通讯的股票怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content   |
            | 需要我们提供建议买入价吗  |
            | 需要我们提供最近的买入价吗 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【是】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<asked>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为以下内容之一
            | tts_content      |
            | 我们的参考买入价是        |
            | 我们最新的买入价是        |
            | 我先退下了，有需要的时候再叫我吧 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock    | asked |
            | 雷科防务的股票怎么样    | 中兴通讯当前股价 | 是     |
#            | 帮我查一下中兴通讯的股票  | 中兴通讯当前股价  | 好的       |
#            | 股票查询中兴通讯          | 中兴通讯当前股价  | 好         |
#            | 查询股票中兴通讯          | 中兴通讯当前股价  | 需要       |
#            | 查询中兴通讯的股票        | 中兴通讯当前股价  | 不用了     |
#            | 查询中兴通讯这只股票      | 中兴通讯当前股价  | 不用       |
#            | 查询中兴通讯这个股票      | 中兴通讯当前股价  | 不需要     |
#            | 我想查询中兴通讯这只股票  | 中兴通讯当前股价  | 算了       |
#            | 我想查询中兴通讯这个股票  | 中兴通讯当前股价  | 好         |
#            | 帮我查询中兴通讯这只股票  | 中兴通讯当前股价  | 需要       |
#            | 帮我查询中兴通讯这个股票  | 中兴通讯当前股价  | 不了       |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询实时股价
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【查询科大讯飞的股价】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content |
            | 今日涨幅        |
            | 今日跌幅        |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock    |
            | 查询科大讯飞的股价     | 科大讯飞当前股价 |
#            | 股价查询银河生物           | 银河生物当前股价      |
#            | 北方国际现在多少钱一股     | 北方国际当前股价      |
#            | 东方雨虹的股价多少         | 东方雨虹当前股价      |
#            | 中国铁建的股票价格         | 中国铁建当前股价      |
#            | 我想知道科大讯飞的股票价格 | 科大讯飞当前股价      |
#            | 我想查查科大讯飞的股票价格 | 科大讯飞当前股价      |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询投资风险
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【科大讯飞有什么投资风险】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock          |
            | 科大讯飞有什么投资风险   | 科大讯飞今日最大跌幅不会超过 |
#            | 科大讯飞的股票有什么投资风险    | 科大讯飞今日最大跌幅不会超过    |
#            | 科大讯飞这只股票有什么投资风险  | 科大讯飞今日最大跌幅不会超过    |
#            | 科大讯飞这个股票有什么投资风险  | 科大讯飞今日最大跌幅不会超过    |
#            | 科大讯飞这支股票有什么投资风险  | 科大讯飞今日最大跌幅不会超过    |
#            | 广联达当前风险如何              | 广联达今日最大跌幅不会超过      |
#            | 广联达的股票当前风险如何        | 广联达今日最大跌幅不会超过      |
#            | 广联达这只股票当前风险如何      | 广联达今日最大跌幅不会超过      |
#            | 广联达这个股票当前风险如何      | 广联达今日最大跌幅不会超过      |
#            | 广联达这支股票当前风险如何      | 广联达今日最大跌幅不会超过      |
#            | 北方国际后市有什么风险          | 北方国际今日最大跌幅不会超过    |
#            | 北方国际的股票后市有什么风险    | 北方国际今日最大跌幅不会超过    |
#            | 北方国际这只股票后市有什么风险  | 北方国际今日最大跌幅不会超过    |
#            | 北方国际这个股票后市有什么风险  | 北方国际今日最大跌幅不会超过    |
#            | 北方国际这支股票后市有什么风险  | 北方国际今日最大跌幅不会超过    |
#            | 买科大讯飞有风险吗               | 科大讯飞今日最大跌幅不会超过    |
#            | 买科大讯飞的股票有风险吗        | 科大讯飞今日最大跌幅不会超过    |
#            | 买科大讯飞这只股票有风险吗      | 科大讯飞今日最大跌幅不会超过    |
#            | 买科大讯飞这个股票有风险吗      | 科大讯飞今日最大跌幅不会超过    |
#            | 买科大讯飞这支股票有风险吗      | 科大讯飞今日最大跌幅不会超过    |
#            | 现在买科大讯飞有风险吗          | 科大讯飞今日最大跌幅不会超过    |
#            | 现在买科大讯飞的股票有风险吗    | 科大讯飞今日最大跌幅不会超过    |
#            | 现在买科大讯飞这只股票有风险吗  | 科大讯飞今日最大跌幅不会超过    |
#            | 现在买科大讯飞这个股票有风险吗  | 科大讯飞今日最大跌幅不会超过    |
#            | 现在买科大讯飞这支股票有风险吗  | 科大讯飞今日最大跌幅不会超过    |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询投资建议-空仓不追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【科大讯飞有什么投资建议】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock        |
            | 金龙机电有什么投资建议   | 金龙机电的建议操作为空仓 |
#            | 你建议买金龙机电的股票吗        | 金龙机电的建议操作为空仓    |
#            | 金龙机电的股票现在值得买吗      | 金龙机电的建议操作为空仓    |
#            | 现在应该买金龙机电的股票吗      | 金龙机电的建议操作为空仓    |
#            | 现在买金龙机电的股票合适吗      | 金龙机电的建议操作为空仓    |
#            | 金龙机电有什么操作建议           | 金龙机电的建议操作为空仓   |
#            | 建议买入金龙机电吗？             | 金龙机电的建议操作为空仓    |
#            | 建议买入金龙机电的股票吗？      | 金龙机电的建议操作为空仓    |
#            | 金龙机电值得买吗？               | 金龙机电的建议操作为空仓    |
#            | 金龙机电可以买吗？               | 金龙机电的建议操作为空仓    |
#            | 金龙机电建议买吗？               | 金龙机电的建议操作为空仓    |
#            | 金龙机电能买吗？                 | 金龙机电的建议操作为空仓    |
#            | 金龙机电的股票值得买吗？         | 金龙机电的建议操作为空仓    |
#            | 金龙机电的股票可以买吗？         | 金龙机电的建议操作为空仓    |
#            | 金龙机电的股票建议买吗？         | 金龙机电的建议操作为空仓    |
#            | 金龙机电的股票能买吗？           | 金龙机电的建议操作为空仓    |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票名称查询投资建议-持仓/买入进行追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【中兴通讯有什么投资建议】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content   |
            | 需要我们提供建议买入价吗  |
            | 需要我们提供最近的买入价吗 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【是】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<asked>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为以下内容之一
            | tts_content      |
            | 我们的参考买入价是        |
            | 我们最新的买入价是        |
            | 我先退下了，有需要的时候再叫我吧 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock        | asked |
            | 雷科防务有什么投资建议   | 中兴通讯的建议操作为持仓 | 是     |
#            | 你建议买中兴通讯的股票吗        | 中兴通讯的建议操作为持仓    | 是         |
#            | 中兴通讯的股票现在值得买吗      | 中兴通讯的建议操作为持仓    | 好的       |
#            | 现在应该买中兴通讯的股票吗      | 中兴通讯的建议操作为持仓    | 好         |
#            | 现在买中兴通讯的股票合适吗      | 中兴通讯的建议操作为持仓    | 需要       |
#            | 中兴通讯有什么操作建议           | 中兴通讯的建议操作为持仓   | 不用了     |
#            | 建议买入中兴通讯吗？             | 中兴通讯的建议操作为持仓    | 不用       |
#            | 建议买入中兴通讯的股票吗？      | 中兴通讯的建议操作为持仓    | 不需要     |
#            | 中兴通讯值得买吗？               | 中兴通讯的建议操作为持仓    | 算了       |
#            | 中兴通讯可以买吗？               | 中兴通讯的建议操作为持仓    |  好的      |
#            | 中兴通讯建议买吗？               | 中兴通讯的建议操作为持仓    | 好         |
#            | 中兴通讯能买吗？                 | 中兴通讯的建议操作为持仓    | 需要       |
#            | 中兴通讯的股票值得买吗？         | 中兴通讯的建议操作为持仓    | 需要       |
#            | 中兴通讯的股票可以买吗？         | 中兴通讯的建议操作为持仓    | 不了       |
#            | 中兴通讯的股票建议买吗？         | 中兴通讯的建议操作为持仓    | 是         |
#            | 中兴通讯的股票能买吗？           | 中兴通讯的建议操作为持仓    | 是         |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询股票概况-空仓不追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【002230的股票怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock          |
            | 300058的股票怎么样  | 300058蓝色光标当前股价 |
#            | 帮我查一下300058的股票  | 300058蓝色光标当前股价  |
#            | 股票查询300058          | 300058蓝色光标当前股价  |
#            | 查询股票300058          | 300058蓝色光标当前股价  |
#            | 查询300058的股票        | 300058蓝色光标当前股价  |
#            | 查询300058这只股票      | 300058蓝色光标当前股价  |
#            | 查询300058这个股票      | 300058蓝色光标当前股价  |
#            | 我想查询300058这只股票  | 300058蓝色光标当前股价  |
#            | 我想查询300058这个股票  | 300058蓝色光标当前股价  |
#            | 帮我查询300058这只股票  | 300058蓝色光标当前股价  |
#            | 帮我查询300058这个股票  | 300058蓝色光标当前股价  |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询股票概况-持仓/买入进行追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【000063的股票怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content   |
            | 需要我们提供建议买入价吗  |
            | 需要我们提供最近的买入价吗 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【是】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<answer>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为以下内容之一
            | tts_content      |
            | 我们的参考买入价是        |
            | 我们最新的买入价是        |
            | 我先退下了，有需要的时候再叫我吧 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock          | answer |
            | 002413的股票怎么样  | 000063中兴通讯当前股价 | 是      |
#            | 帮我查一下000063的股票  | 000063中兴通讯当前股价      | 好的       |
#            | 股票查询000063          | 000063中兴通讯当前股价       | 好         |
#            | 查询股票000063          | 000063中兴通讯当前股价       | 需要       |
#            | 查询000063的股票        | 000063中兴通讯当前股价       | 不用了     |
#            | 查询000063这只股票      | 000063中兴通讯当前股价       | 不用       |
#            | 查询000063这个股票      | 000063中兴通讯当前股价       | 不需要     |
#            | 我想查询000063这只股票  | 000063中兴通讯当前股价       | 需要       |
#            | 我想查询000063这个股票  | 000063中兴通讯当前股价       | 算了       |
#            | 帮我查询000063这只股票  | 000063中兴通讯当前股价       | 好的       |
#            | 帮我查询000063这个股票  | 000063中兴通讯当前股价       | 不了       |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询实时股价
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【查询002230的股价】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content |
            | 今日涨幅        |
            | 今日跌幅        |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock          |
            | 查询002230的股价   | 002230科大讯飞当前股价 |
#            | 股价查询000806           | 000806银河生物当前股价      |
#            | 000065现在多少钱一股     | 000065北方国际当前股价      |
#            | 002230的股价多少         | 002230科大讯飞当前股价      |
#            | 002230的股票价格         | 002230科大讯飞当前股价      |
#            | 我想知道002230的股票价格 | 002230科大讯飞当前股价      |
#            | 我想查查002230的股票价格 | 002230科大讯飞当前股价      |
#            | 002230的价格是多少       | 002230科大讯飞当前股价      |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询投资风险
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功


        # 模拟用户说出【002230有什么投资风险】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock                |
            | 002230有什么投资风险 | 002230科大讯飞今日最大跌幅不会超过 |
#            | 002230的股票有什么投资风险    | 002230科大讯飞今日最大跌幅不会超过    |
#            | 002230这只股票有什么投资风险  | 002230科大讯飞今日最大跌幅不会超过    |
#            | 002230这个股票有什么投资风险  | 002230科大讯飞今日最大跌幅不会超过    |
#            | 002230这支股票有什么投资风险  | 002230科大讯飞今日最大跌幅不会超过    |
#            | 002410当前风险如何            | 002410广联达今日最大跌幅不会超过      |
#            | 002410的股票当前风险如何      | 002410广联达今日最大跌幅不会超过      |
#            | 002410这只股票当前风险如何    | 002410广联达今日最大跌幅不会超过      |
#            | 002410这个股票当前风险如何    | 002410广联达今日最大跌幅不会超过      |
#            | 002410这支股票当前风险如何    | 002410广联达今日最大跌幅不会超过      |
#            | 000065后市有什么风险          | 000065北方国际今日最大跌幅不会超过    |
#            | 000065的股票后市有什么风险    | 000065北方国际今日最大跌幅不会超过    |
#            | 000065这只股票后市有什么风险  | 000065北方国际今日最大跌幅不会超过    |
#            | 000065这个股票后市有什么风险  | 000065北方国际今日最大跌幅不会超过    |
#            | 000065这支股票后市有什么风险  | 000065北方国际今日最大跌幅不会超过    |
#            | 买002271有风险吗               | 002271东方雨虹今日最大跌幅不会超过    |
#            | 买002271的股票有风险吗        | 002271东方雨虹今日最大跌幅不会超过    |
#            | 买002271这只股票有风险吗      | 002271东方雨虹今日最大跌幅不会超过    |
#            | 买002271这个股票有风险吗      | 002271东方雨虹今日最大跌幅不会超过    |
#            | 买002271这支股票有风险吗      | 002271东方雨虹今日最大跌幅不会超过    |
#            | 现在买002230有风险吗           | 002230科大讯飞今日最大跌幅不会超过    |
#            | 现在买002230的股票有风险吗     | 002230科大讯飞今日最大跌幅不会超过    |
#            | 现在买002230这只股票有风险吗   | 002230科大讯飞今日最大跌幅不会超过    |
#            | 现在买002230这个股票有风险吗   | 002230科大讯飞今日最大跌幅不会超过    |
#            | 现在买002230这支股票有风险吗   | 002230科大讯飞今日最大跌幅不会超过    |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询投资建议-空仓不追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【300058有什么投资建议】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock              |
            | 300058有什么投资建议 | 300058蓝色光标的建议操作为空仓 |
#            | 你建议买300058的股票吗        | 300058蓝色光标的建议操作为空仓    |
#            | 300058的股票现在值得买吗      | 300058蓝色光标的建议操作为空仓    |
#            | 现在应该买300058的股票吗      | 300058蓝色光标的建议操作为空仓    |
#            | 现在买300058的股票合适吗      | 300058蓝色光标的建议操作为空仓    |
#            | 300058有什么操作建议           | 300058蓝色光标的建议操作为空仓   |
#            | 建议买入300058吗？             | 300058蓝色光标的建议操作为空仓    |
#            | 建议买入300058的股票吗？      | 300058蓝色光标的建议操作为空仓    |
#            | 300058值得买吗？               | 300058蓝色光标的建议操作为空仓    |
#            | 300058可以买吗？               | 300058蓝色光标的建议操作为空仓    |
#            | 300058建议买吗？               | 300058蓝色光标的建议操作为空仓    |
#            | 300058能买吗？                 | 300058蓝色光标的建议操作为空仓    |
#            | 300058的股票值得买吗？         | 300058蓝色光标的建议操作为空仓    |
#            | 300058的股票可以买吗？         | 300058蓝色光标的建议操作为空仓    |
#            | 300058的股票建议买吗？         | 300058蓝色光标的建议操作为空仓    |
#            | 300058的股票能买吗？           | 300058蓝色光标的建议操作为空仓    |

    @TypicalCase, @Stock
    场景大纲: 股票查询-根据股票代码查询投资建议-持仓/买入进行追问
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【中兴通讯的股票怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】和以下内容之一
            | tts_content   |
            | 需要我们提供建议买入价吗  |
            | 需要我们提供最近的买入价吗 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【是】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<answer>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为以下内容之一
            | tts_content      |
            | 我们的参考买入价是        |
            | 我们最新的买入价是        |
            | 我先退下了，有需要的时候再叫我吧 |

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock              | answer |
            | 002413有什么投资建议 | 002230科大讯飞的建议操作为买入 | 是      |
#            | 你建议买002230的股票吗        | 002230科大讯飞的建议操作为买入    | 是         |
#            | 002230的股票现在值得买吗      | 002230科大讯飞的建议操作为买入    | 好的       |
#            | 现在应该买002230的股票吗      | 002230科大讯飞的建议操作为买入    | 好         |
#            | 现在买002230的股票合适吗      | 002230科大讯飞的建议操作为买入    | 需要       |
#            | 002230有什么操作建议           | 002230科大讯飞的建议操作为买入   | 不用了     |
#            | 建议买入002230吗？             | 002230科大讯飞的建议操作为买入    | 不用       |
#            | 建议买入002230的股票吗？      | 002230科大讯飞的建议操作为买入    | 不需要     |
#            | 002230值得买吗？               | 002230科大讯飞的建议操作为买入    | 算了       |
#            | 002230可以买吗？               | 002230科大讯飞的建议操作为买入    | 不了       |
#            | 002230建议买吗？               | 002230科大讯飞的建议操作为买入    | 是         |
#            | 002230能买吗？                 | 002230科大讯飞的建议操作为买入    | 是         |
#            | 002230的股票值得买吗？         | 002230科大讯飞的建议操作为买入    | 是         |
#            | 002230的股票可以买吗？         | 002230科大讯飞的建议操作为买入    | 不了       |
#            | 002230的股票建议买吗？         | 002230科大讯飞的建议操作为买入    | 是         |
#            | 002230的股票能买吗？           | 002230科大讯飞的建议操作为买入    | 是         |


    # 带界面显示

    @TypicalCase, @Weather
    场景大纲: 天气查询-查询单天天气

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天天气怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderTemplate】，参数【type】为【WeatherTemplate】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 今天广州天气怎么样     |
#            | 合肥明天天气怎么样     |
#            | 查询北京后天天气      |
#            | 查询大后天上海天气     |

    @TypicalCase, @Weather
    场景大纲: 天气查询-查询时间段天气

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【周末广州天气怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderTemplate】，参数【type】为【WeatherTemplate】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 周末广州天气怎么样     |
#            | 合肥本周末天气怎么样    |

    @TypicalCase, @Stock, @disable
    场景大纲: 股票查询-根据股票名称查询单支股票

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【股票查询】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【股票查询深发展】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock |
            | 股票查询平安银行      | 平安银行  |
#            | 查询中国石油的股票     | 中国石油  |
#            | 中国移动现在多少钱一股   | 中国移动  |
#            | 五粮液的股价多少      | 五粮液   |

    @TypicalCase, @Stock, @disable
    场景大纲: 股票查询-根据股票代码查询单支股票

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【股票查询600001】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock  |
            | 股票查询600001    | 600001 |
#            | 查询600050的股票   | 600050 |
#            | 601398现在多少钱一股 | 601398 |
#            | 600028的股价多少   | 600028 |
#            | 查询601318      | 601318 |

    @TypicalCase, @Stock, @disable
    场景大纲: 股票查询-查询大盘

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【股票查询】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【股票大盘多少】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<stock>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | stock |
            | 股票大盘多少        | 上证指数  |
#            | 查询股指          | 上证指数  |
#            | 上证指数多少        | 上证指数  |
#            | 现在的上证指数       | 上证指数  |
#            | 上证指数          | 上证指数  |

    @TypicalCase, @Encyclopedia
    场景大纲: 百科问答-查询问题

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【恐龙为什么会灭绝】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
#        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderTemplate】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        例子: 语料
            | voice_content |
            | 恐龙为什么会灭绝      |
            | 天为什么是蓝色的      |
            | 鱼睡觉会闭眼睛吗      |

    @TypicalCase, @Translation
    场景大纲: 翻译助手-中文翻译成英文

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【帮我翻译所见即所得】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<voice_content>的英文是<translation>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | translation                  |
            | 帮我翻译所见即所得     | What You See Is What You Get |
            | 所见即所得英文怎么说    | What You See Is What You Get |
            | 把所见即所得翻译成英文   | What You See Is What You Get |
#            | 用英文翻译所见即所得    | What You See Is What You Get |
#            | 我要翻译所见即所得     | What You See Is What You Get |

    @TypicalCase, @Chatting
    场景大纲: 通用闲聊

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 对你彻底无语了       |
            | 为什么焰火是绚丽多彩的   |
            | 我心情很不好        |
            | 我给你介绍一个对象吧    |
            | 休息会儿吧         |
            | 2022年冬奥会在哪举办  |
            | 你都有什么才华呢      |
            | 你好漂亮哦         |

    @TypicalCase, @Bamboos
    场景大纲: 竹间智能追问-竹间智能追问
        假如      用户已登录讯飞开放平台账号
        假如      用户已有带屏产品
        假如      用户产品【竹间智能】技能已打开

        # 模拟用户说出【周杰伦是谁】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】,TTS音频包含【<tts_content>】和【<asked>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【想】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<answered>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】,TTS音频包含随机内容

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        例子:     语料
            | voice_content | tts_content        | asked | answered |
            | 周杰伦是谁         | 周杰伦，中国台湾流行乐男歌手、音乐人 | 你想知道  | 想        |
            | 杜德伟是谁         | 杜德伟，中国香港歌手及演员      | 你想知道  | 不想       |

    @TypicalCase, @Poetry
    场景大纲: 古诗词-搜索古诗词

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【长恨歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content | tts_content                     |
            | 长恨歌           | 汉皇重色思倾国，御宇多年求不得。杨家有女初长成，养在深闺人未识 |
#            | 背一首将进酒        | 君不见，黄河之水天上来，奔流到海不复回。君不见，高堂明镜悲白发，朝如青丝暮成雪 |
#            | 山有木兮木有枝       | 心悦君兮君不知                                 |
            | 查一查陇西行出自什么朝代的 | 唐代                              |

    @TypicalCase, @Poetry
    场景大纲: 古诗词-诗词对答追问

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【李白的静夜思】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【这首诗是哪个朝代的】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<asked>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【再背一个李白的其他的诗】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<asked2>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content | tts_content             | asked | asked2      |
            | 李白的静夜思        | 床前明月光，疑是地上霜。举头望明月，低头思故乡 | 唐代    | 再背一个李白的其他的诗 |

    @TypicalCase, @Food
    场景大纲: 开放问答-食物热量

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【200克苹果的热量】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content      | tts_content  |
            | 200克苹果的热量          | 108千卡的热量     |
            | 薯片的营养成分包括多少        | 100克的薯片中包含热量 |
            | 150克的面包的营养成分有多少    | 150克的面包中包含热量 |
            | 300克薯片的脂肪含量有多少     | 112.8克的脂肪    |
            | 薯片有多少卡路里           | 480千卡的热量     |
            | 150克的面包的蛋白质有多少     | 12.45克的蛋白质   |
            | 200克的面包的碳水化合物含量有多少 | 117.2克的碳水化合物 |

    @TypicalCase, @FamousQuotes
    场景大纲: 开放问答-经典名句

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【200克苹果的热量】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 关于励志的经典句子     |
            | 丘吉尔的名言        |
#            | 鲁滨逊漂流记里面的名句   |
            | 清代时期有什么名言     |
            | 说个美国的名言       |
            | 随便说个名言        |

    @TypicalCase, @Homoionym&Antonym
    场景大纲: 近反义词-搜索近反义词

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【开心的近义词】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 开心的近义词        |
            | 开心的反义词是什么     |
            | 帮我查开心的反义词     |
            | 有哪些词和安静的意思相反  |
#            | 哪个词是安静的近义词    |

    @TypicalCase, @meishichina
    场景: 美食天下菜谱-打开美食天下菜谱
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开美食天下菜谱】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开美食天下菜谱】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【欢迎使用美食天下菜谱】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【教我做山药】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【今天吃什么】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【我来给你推荐几道菜吧】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【打开美食天下菜谱】

#        例子:     语料
#            | voice_content | tts_content|

    @TypicalCase, @meishichina
    场景大纲: 美食天下菜谱-具体菜式的菜谱
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开美食天下菜谱】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开美食天下菜谱】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【欢迎使用美食天下菜谱】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【可乐鸡翅怎么做】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content |
            | 可乐鸡翅怎么做       | 可乐鸡翅        |
            | 番茄炒蛋怎么做       | 番茄炒蛋        |

    @TypicalCase, @meishichina
    场景大纲: 美食天下菜谱-模糊菜式的菜谱
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开美食天下菜谱】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开美食天下菜谱】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【欢迎使用美食天下菜谱】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【可乐鸡翅怎么做】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | tts_content |
            | 教我做川菜         | 鱼香肉丝        |
            | 教我做山药         | 蓝莓山药        |

    @TypicalCase, @meishichina
    场景: 美食天下菜谱-菜谱步骤
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开美食天下菜谱】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开美食天下菜谱】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【欢迎使用美食天下菜谱】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【可乐鸡翅怎么做】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【可乐鸡翅怎么做】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【可乐鸡翅】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【下一步】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【下一步】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【鸡翅洗净，加入适量料酒】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【下一步】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【下一步】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【葱姜切片】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【再说一遍】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【再说一遍】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【葱姜切片】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【上一步】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【上一步】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【鸡翅洗净，加入适量料酒】

        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

#        例子:     语料
#            | voice_content | tts_content|
#            | 教我做川菜      | 鱼香肉丝        |

    @TypicalCase, @Fortune, @disable
    场景大纲: 幸运签

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听幸运签】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要求签          |
            | 想看看我的事业运      |
            | 想看看我的桃花运      |

    @TypicalCase, @SoundOfNature, @disable
    场景大纲: 大自然的声音

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【大自然的声音】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 狗怎么叫的         |
            | 口琴的声音是什么样的    |
            | 石头落水的声音       |

    # 带追问

    @TypicalCase, @Idiom, @disable
    场景大纲: 成语接龙-打开成语接龙
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 打开成语接龙        |

    @TypicalCase, @Idiom, @disable
    场景大纲: 成语接龙-游戏中

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端已经打开成语接龙

        # 模拟用户说出【一丝不苟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【该我啦】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 一丝不苟          |

    @TypicalCase, @Idiom, @disable
    场景大纲: 成语接龙-重新开始一局

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端已经打开成语接龙

        # 模拟用户说出【重新来】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【成语接龙】
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            #| 重新来           |海知智能的技能，无法优化，后期自己做的时候加上
            | 再来一次          |
            | 重来一局          |
            #| 从头开始          |海知智能的技能，无法优化，后期自己做的时候加上
            #| 认输了           |海知智能的技能，无法优化，后期自己做的时候加上

    @TypicalCase, @Idiom, @disable
    场景大纲: 成语接龙-关闭成语接龙

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端已经打开成语接龙

        # 模拟用户说出【不玩了】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【下次再来玩吧】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 不玩了           |
            | 退出            |
            #| 关闭成语接龙        |海知智能的技能，无法优化，后期自己做的时候加上

    @TypicalCase, @WordGame, @disable
    场景大纲: 词语接龙-打开词语接龙

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开词语接龙】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【词语接龙】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【我先开始】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【天地】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【地】
        #那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【我先开始】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【谢谢】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 打开词语接龙        |

    @TypicalCase, @VoiceNote, @disable
    场景大纲: 语记-完整完成语记

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开语记】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<enter_voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【已打开语记，你可以对我说“开始记录”和“停止记录”】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【打开语记开始录音】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<start_voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】

        # 模拟用户说出需要记录的内容的识别过程，包含【停止录音】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | enter_voice_content | start_voice_content | voice_content                                                                                                                                                                    |
            | 打开语记                | 打开语记开始录音            | 4月10日，博鳌亚洲论坛2018年年会在山青海碧、日暖风轻的海南开幕，习近平主席出席开幕式并发表主旨演讲。他强调顺应时代潮流，坚持开放共赢，宣布中国扩大开放新的重大举措。央视网特提炼出演讲重点，各方就主旨演讲的解读，以飨读者。停止录音                                                            |
            | 启动语记                | 用语记帮我做记录            | 科大讯飞股份有限公司成立于1999年，是一家专业从事智能语音及语言技术、人工智能技术研究，软件及芯片产品开发，语音信息服务及电子政务系统集成的国家级骨干软件企业。2008年，科大讯飞在深圳证券交易所挂牌上市，股票代码：002230。停止记录                                                         |
            | 打开语音笔记              | 打开语记开始录音            | 人工智能主要分为计算智能、感知智能、认知智能。计算智能，即机器“能存会算”的能力；感知智能，即机器具有“能听会说、能看会认”的能力，主要涉及语音合成、语音识别、图像识别、多语种语音处理等技术；认知智能，即机器具有“能理解会思考”的能力，主要涉及教育评测、知识服务、智能客服、机器翻译等技术。关闭语记                            |
            | 打开语音记录              | 用语记帮我做记录            | 科大讯飞作为中国智能语音与人工智能产业领导者，在语音合成、语音识别、口语评测、自然语言处理等多项技术上拥有国际领先的成果。科大讯飞是我国唯一以语音技术为产业化方向的“国家863计划成果产业化基地”、“国家规划布局内重点软件企业”、“国家高技术产业化示范工程”，并被原信息产业部确定为中文语音交互技术标准工作组组长单位，牵头制定中文语音技术标准。关闭语记 |
            | 打开语音转文字             | 打开语记开始录音            | 博鳌亚洲论坛上“一带一路” 成为人们聚焦的一大主题。在4月9号以物流为主题的分论坛上，来自全球的物流业代表就“一带一路”给国际贸易市场带来的变化和机遇展开了讨论。关闭语记                                                                                            |

    @TypicalCase, @EnglishChallenge, @disable
    场景: 挑战单词

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开挑战单词】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开挑战单词】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【挑战单词】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【抛硬币】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【开始挑战】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【记得再来】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @StrongestBrain, @disable
    场景: 最强大脑

        # 模拟用户说出【打开最强大脑】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开最强大脑】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【最强大脑】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【正确】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【正确】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【记得再来】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功


    @TypicalCase, @BodyExercise, @disable
    场景: 广播操

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【广播体操】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开广播操】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【慢的】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【慢的】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【慢的】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【退出】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @Bible, @disable
    场景大纲: 圣经

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开每日英语】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开圣经】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【圣经】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【播放圣经】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【播放圣经】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【创世纪】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【第一章】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<chapter>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【感谢使用】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content | chapter |
            | 创世纪           | 第一章     |

    @TypicalCase, @FiveMinuteExercise, @disable
    场景: 五分钟锻炼

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【五分钟锻炼】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【打开五分钟锻炼】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【平板支撑】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【平板支撑】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【轻量级】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【轻量级】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        # 模拟用户说出【退出】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @CoinTossing, @disable
    场景: 抛硬币

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要抛硬币】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要抛硬币】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【一枚亮晶晶的硬币准备好了】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【抛硬币】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【抛】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【面】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【再抛一次】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【再抛一次】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【面】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【退出】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【退出】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【记得再来】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    # 闹钟
    @TypicalCase, @Alerts
    场景大纲: 闹钟提醒-设置闹钟成功

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【提醒我中午十二点吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

#        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【<scheduled_time>】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

#        当       iFlyOS客户端发送event【Alerts】，【AlertStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【Alerts】，【AlertStopped】
#        那么      iFlyOS服务端回复状态为【200】成功
        那么      清空闹钟列表

        例子:     语料
            | voice_content | tts_content | scheduled_time |
#            | 明天中午12点提醒我吃饭  | 明天中午12点     | 4:00           |
#            | 今天中午十一点叫我开会   | 今天中午十一点     | 3:00           |
#            | 晚上9点叫我开会      | 晚上九点        | 13:00          |
#            | 早上十一点我要回公司    | 早上十一点       | 3:00           |
            | 设置明天上午9点的闹钟   | 明天上午9点      | 1:00           |
#            | 明天上午8点叫我起床    | 明天上午8点      | 0:00           |

    @TypicalCase, @Alerts
    场景大纲: 闹钟提醒-追问时间，设置闹钟成功

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【提醒我吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【我应该在什么时候提醒你】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        # 模拟用户说出【中午十二点】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<time>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【<scheduled_time>】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【Alerts】，【AlertStopped】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | time  | tts_content | scheduled_time |
            | 提醒我吃饭         | 中午十二点 | 明天中午12点     | 4:00           |
            | 叫我开会          | 中午十一点 | 今天中午11点     | 3:00           |
            | 叫我开会          | 晚上六点  | 晚上六点        | 13:00          |
            | 我要回公司         | 早上九点  | 明天上午9点      | 1:00           |
            | 明天八点提醒我起床     | 晚上八点  | 晚上八点        | 12:00          |

    @TypicalCase, @Alerts
    场景: 闹钟提醒-闹钟响铃时有对话，暂停闹钟

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【中午十二点提醒我吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【明天中午十二点提醒我吃饭】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【好的，我将在明天中午十二点提醒您吃饭】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【明天中午12点提醒我吃饭】

        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【04:00】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredBackground】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @Alerts
    场景大纲: 闹钟提醒-删除闹钟成功
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

#        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【05:00】

         # 模拟用户说出【提醒我中午十二点吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【设置晚上九点钟的闹钟】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【设置晚上9点钟的闹钟】
        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【13:00】


        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【晚上九点钟的闹钟】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【删除晚上九点钟的闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【删除晚上9点钟的闹钟】


        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【好的，已经帮您删除十二点钟的提醒】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

#        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
#        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【删除晚上九点钟的闹钟】


        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【DeleteAlert】
        当       iFlyOS客户端发送event【Alerts】，【DeleteAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

        例子:     语料
            | voice_content |
            | 删除晚上九点钟的闹钟    |
#            | 删除明天上午8点的闹钟   | 0:00  |

    @TypicalCase, @Alerts
    场景大纲: 闹钟提醒-确认删除所有闹钟成功
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
         # 模拟用户说出【提醒我中午十二点吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

#        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【<tts_content>】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【<scheduled_time>】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功
#       那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        # 模拟用户说出【删除所有闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
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
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<confirm>】
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

        例子:     语料
            | voice_content | confirm |
#            | 删除所有闹钟    | 确认  |
#        | 清空闹钟列表        | 确定      |
            | 删除全部闹钟        | 确定      |

    @TypicalCase, @Alerts
    场景大纲: 闹钟提醒-取消删除所有闹钟成功
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        # 模拟用户说出【删除所有闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
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
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<confirm>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【好的】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【取消】

        例子:     语料
            | voice_content | confirm |
            | 删除全部闹钟        | 取消      |

    @TypicalCase, @Timers
    场景大纲: 闹钟提醒-开始倒计时

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
#        那么     清空闹钟列表

        # 模拟用户说出【计时一分钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【倒计时15秒钟】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【倒计时15秒钟开始】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【Alerts】，【AlertStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【Alerts】，【AlertStopped】
        那么      iFlyOS服务端回复状态为【200】成功

        例子:     语料
            | voice_content |
#            | 计时器十秒钟        |
#            | 计时一分钟         |
#            | 开始计时三分钟       |
            | 倒计时15秒钟       |
#            | 定时十分钟         |
#            | 一小时后提醒我       |

    @TypicalCase, @Timers
    场景大纲: 闹钟提醒-倒计时不足15秒
        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
#        那么     清空闹钟列表

        # 模拟用户说出【计时一分钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【倒计时十秒钟】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【暂时不支持15秒以内的倒计时】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
#        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】
#        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
#        那么      iFlyOS服务端回复状态为【200】成功
#
#        当       iFlyOS客户端发送event【Alerts】，【AlertStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【Alerts】，【AlertEnteredForeground】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【Alerts】，【AlertStopped】
#        那么      iFlyOS服务端回复状态为【200】成功

        例子:     语料
            | voice_content |
#            | 计时器十秒钟        |
#            | 计时一分钟         |
#            | 开始计时三分钟       |
            | 倒计时10秒钟       |
#            | 定时十分钟         |
#            | 一小时后提醒我       |

    @TypicalCase, @Alerts, @debug
    场景大纲: 闹钟提醒-查询闹钟

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功


        # 模拟用户说出【提醒我中午十二点吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【明天中午十二点提醒我吃饭】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【12点】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端下行通道回复的directive为【Alerts】，【SetAlert】，参数【scheduledTime】为【4:00】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertSucceeded】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【我有几个闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【闹钟】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      清空闹钟列表

        例子:     语料
            | voice_content |
            | 我有几个闹钟        |
#            | 查询闹钟          |

    # 音频播放
    @TypicalCase, @AudioPlayer
    场景: 音乐点播-播放流式音乐成功，从IDLE状态切换到PLAY状态，从PLAY状态切换到BUFFER_UNDERRUN状态，从BUFFER_UNDERRUN状态切换到PLAY状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

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

    @TypicalCase, @AudioPlayer
    场景: 音乐点播-播放链接音乐成功，从IDLE状态切换到PLAY状态，从PLAY状态切换到BUFFER_UNDERRUN状态，从BUFFER_UNDERRUN状态切换到PLAY状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听歌】
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

    @TypicalCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断再恢复，从PLAY状态切换到PAUSED状态，从PAUSED状态切换到PLAY状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @AudioPlayer, @wip
    场景: 音乐点播-流式播放上一个歌播放直到结束，下一个开始播放，从PLAY状态切换到FINISHED状态，从FINISHED状态切换到PLAY状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放流式音乐

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【ENQUEUE】，带Binary Audio Attachment

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】

    @TypicalCase, @AudioPlayer
    场景: 音乐点播-链接播放上一个歌播放直到结束，下一个开始播放，从PLAY状态切换到FINISHED状态，从FINISHED状态切换到PLAY状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放链接音乐

        当       iFlyOS客户端音乐播放器定位到【120000】
        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【ENQUEUE】

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @AudioPlayer
    场景: 音乐点播-获取音乐信息

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复音乐信息
        当       iFlyOS客户端发送event【AudioPlayer】，【StreamMetadataExtracted】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @AudioPlayer, @wip
    场景: 音乐点播-清空播放队列并停止播放，从PLAY状态切换到STOPPED状态

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【ClearQueue】，参数【clearBehavior】为【CLEAR_ALL】
        # 回复音乐信息
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackQueueCleared】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @AudioPlayer, @wip
    场景: 音乐点播-清空播放队列但不停止当前音乐播放

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【ClearQueue】，参数【clearBehavior】为【CLEAR_ENQUEUED】
        # 回复音乐信息
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackQueueCleared】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @StoryTelling
    场景大纲: 评书点播-随机搜索评书

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听评书】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听评书         |
            | 播放评书          |
            | 放一个评书         |

    @TypicalCase, @StoryTelling # 没有找到资源
    场景大纲: 评书点播-根据表演者搜索评书

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听单田芳的评书】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听单田芳的评书     |
            | 播放单田芳的评书      |

    @TypicalCase, @StoryTelling
    场景大纲: 评书点播-根据评书名称搜索评书

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听三国演义】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听三国演义       |
            | 播放隋唐演义        |

    @TypicalCase, @Drama
    场景大纲: 戏曲点播-根据类别搜索戏曲

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听白蛇传】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听京剧         |
            | 播放黄梅戏         |

    @TypicalCase, @Drama
    场景大纲: 戏曲点播-根据戏曲名称+类别搜索戏曲

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听京剧白蛇传】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听京剧白蛇传      |
#            | 我要听白蛇传的越剧     |
            | 播放豫剧霸王别姬      |
            | 播放霸王别姬的黄梅戏    |

    @TypicalCase, @Drama
    场景大纲: 戏曲点播-根据演员名称+类别搜索戏曲

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【播放梅兰芳的京剧】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听于魁智的京剧     |
            | 播放梅兰芳的京剧      |

    @TypicalCase, @Drama
    场景大纲: 戏曲点播-根据戏曲名称+演员名称搜索戏曲

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听于魁智的空城计】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听于魁智的空城计    |
#            | 播放梅兰芳的霸王别姬    |

    @TypicalCase, @Sketch&CrossTalk
    场景大纲: 相声小品-随机播放相声/小品

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听相声】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听相声         |
#            | 播放小品          |

    @TypicalCase, @Sketch&CrossTalk
    场景大纲: 相声小品-根据演员名称搜索相声/小品

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听陈佩斯的小品】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听陈佩斯的小品     |
            | 播放苗阜王声的相声     |

    @TypicalCase, @Sketch&CrossTalk
    场景大纲: 相声小品-根据名称搜索相声/小品

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听小品吃面条】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听小品吃面条      |
            | 我要听吃面条        |
            | 播放相声满腹经纶      |
            | 播放满腹经纶        |

    @TypicalCase, @Sketch&CrossTalk
    场景大纲: 相声小品-根据演员+名称搜索相声/小品

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听陈佩斯的主角与配角】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听陈佩斯的主角与配角  |
            | 播放苗阜王声的满腹经纶   |

    @TypicalCase, @Novel, @disable
    场景大纲: 有声小说-随机播放小说

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听小说】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听小说         |
            #| 最近有什么小说       |没信源，暂不处理，等我们做
            #| 有什么小说         |没信源，暂不处理，等我们做
            | 播放小说          |
            | 播放有声小说        |

    @TypicalCase, @Novel, @disable
    场景大纲: 有声小说-根据题材类型搜索小说

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听小说】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            #| 我要听武侠小说       |没信源，暂不处理，等我们做
            | 播放玄幻小说        |

    @TypicalCase, @Novel, @disable
    场景大纲: 有声小说-根据名称搜索小说

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听小说】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            #| 我要听三体小说       |没信源，暂不处理，等我们做
            #| 播放鬼吹灯小说       |没信源，暂不处理，等我们做

    @TypicalCase, @Radio
    场景大纲: 广播电台-随机搜索广播电台

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听电台】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听电台         |
            | 我要听广播         |
            | 我要听广播电台       |
            | 我要听收音机        |
#            | 听会电台          |
            | 播放广播          |
            | 播放电台          |

    @TypicalCase, @Radio
    场景大纲: 广播电台-根据类别搜索广播电台

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听经济电台】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听经济电台       |
            | 我要听体育电台       |
            | 我要听综合电台       |
            | 我要听交通电台       |
            | 我要听音乐电台       |
            | 我要听科技电台       |
            | 我要听农业电台       |
            | 我要听曲艺电台       |

    @TypicalCase, @Radio
    场景大纲: 广播电台-根据关键词搜索广播电台

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听电台】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功


        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要听中央广播电台     |
            | 我要听装垫台        |

    @TypicalCase, @WhiteNoise, @disable
    场景: 白噪音

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【白噪音】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【播放白噪音】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @EyeExercise, @disable
    场景: 眼保健操

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【眼保健操】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【播放眼保健操】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @MeditationMoments
    场景大纲: 冥想时刻

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【冥想时刻】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 我要冥想          |
            | 换一个鸟叫声        |
            | 我要听流水声        |

    @TypicalCase, @SleepMusic, @disable
    场景: 好好睡觉

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【好好睡觉】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【好好睡觉】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【睡个好觉哦】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @PrenatalEducationMusic, @disable
    场景: 越听越聪明

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【越听越聪明】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【越听越聪明】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @KinderMusic, @disable
    场景: 幼儿音乐

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【幼儿音乐】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【幼儿音乐】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @Guangchangwu, @disable
    场景: 广场舞时刻

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【广场舞时刻】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【广场舞时刻】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @VoiceJoke, @disable
    场景大纲: 有声笑话

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【来个笑话】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 来个笑话          |
            #| 我要听笑话         |没信源，暂不处理，等我们做
            | 讲笑话           |

    @TypicalCase, @JokeWithView, @disable
    场景大纲: 笑话段子

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【来个笑话】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】
        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 来个笑话          |
            | 说个段子          |
            | 来个搞笑图片        |

    # 音量控制
    @TypicalCase, @VolumeControl
    场景大纲: 音量控制-设置音量

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【把音量设为50%】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
#        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        那么      iFlyOS服务端回复的directive为【Speaker】，【SetVolume】，参数【volume】为【<volume>】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 回复音量变更状态
        当       iFlyOS客户端发送event【Speaker】，【VolumeChanged】
        那么      iFlyOS服务端回复状态为【200】成功

        例子:     语料
            | voice_content | volume |
#            | 把音量设为50%      | 50     |
            | 把音量调到50%      | 50     |

    @TypicalCase, @VolumeControl
    场景大纲: 音量控制-调整音量

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【声音大一点】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【Speaker】，【AdjustVolume】，参数【volume】为【<volume>】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 回复音量变更状态
        当       iFlyOS客户端发送event【Speaker】，【VolumeChanged】
        那么      iFlyOS服务端回复状态为【200】成功

#        当        iFlyOS客户端发送查询状态请求
#        那么      iFlyOS服务端音量为原来的【<volume>】

#        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | volume |
            | 声音大一点         | 10     |
#            | 声音太小了         | 10     |
            | 声音听不清         | 10     |
            | 声音小一点         | -10    |
#            | 声音太大了         | -10    |
#            | 太吵了           | -10    |

    @TypicalCase, @VolumeControl
    场景大纲: 音量控制-设置静音

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【设置为静音】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
#        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】
        那么      iFlyOS服务端回复的directive为【Speaker】，【SetMute】，参数【mute】为【<mute>】
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功
        # 回复音量变更状态
        当       iFlyOS客户端发送event【Speaker】，【MuteChanged】
        那么      iFlyOS服务端回复状态为【200】成功


        例子:     语料
            | voice_content | mute |
#            | 静音            | true  | iat为“零”
#            | 设置静音          | true  |
            | 设置为静音         | true |
#            | 把声音关掉         | true  |

    @TypicalCase, @VolumeControl
    场景大纲: 音量控制-取消静音

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【设置为静音】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【Speaker】，【SetMute】，参数【mute】为【<mute>】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 回复音量变更状态
        当       iFlyOS客户端发送event【Speaker】，【MuteChanged】
        那么      iFlyOS服务端回复状态为【200】成功

#        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content | mute  |
            | 取消静音          | false |
            | 把声音打开         | false |

    # 播放控制
    @TypicalCase, @AudioPlayer
    场景大纲: 播放控制-pause//暂停播放

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【暂停】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【暂停】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

#        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 暂停            |
            | 暂停播放          |
#            | 停一下           |
            | 暂停一下          |

    @TypicalCase, @AudioPlayer
    场景大纲: 播放控制-resume//继续播放

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端在【60000】暂停播放了音乐

        # 模拟用户说出【继续】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【好的】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，参数【offsetInMilliseconds】为【60000】
        # 回复继续播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
#            | 继续播放          |
#            | 接着播           |
            | 接着播放          |
#            | 接着听           |

    @TypicalCase, @AudioPlayer
    场景大纲: 播放控制-next//切换到播放列表中的下一个

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【下一首】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功
        # 再回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 下一首           |
#            | 切歌            |
#            | 不听这首          |

    @TypicalCase, @AudioPlayer
    场景大纲: 播放控制-previous//切换到播放列表中的上一个

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【下一首】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【下一首】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功


        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功
        # 再回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【上一首】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        # 再回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
#            | 上一首           |
#            | 听刚才那首         |
#            | 回到上一首         |
            | 回到刚才那首        |

    @TypicalCase, @AudioPlayer
    场景大纲: 播放控制-stop//停止播放

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【停止】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
#        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您暂停播放】
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
#        那么      iFlyOS服务端回复状态为【200】成功
#        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
#        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功


        例子: 语料
            | voice_content |
#            | 停止            |
#            | 关闭播放          |
            | 停止播放          |
#            | 不听了           |
#            | 关闭音乐          |
#            | 音乐关掉          |
#            | 音乐关了          |
#            | 把音乐关掉         |

    # 接口覆盖
    @TypicalCase, @System
    场景: 系统接口-同步状态
        假如      用户已登录讯飞开放平台账号
        假如      用户已有带屏产品【预发布测试专用带屏音箱】

        当       用户编辑【预发布测试专用带屏音箱】设备
        那么      浏览器显示【设备信息】页面
        当       用户复制client_id
        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 建立连接后同步客户端状态
        当       iFlyOS客户端发送event【System】，【SynchronizeState】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @System
    场景: 系统接口-用户不活动报告
        假如      用户已登录讯飞开放平台账号
        假如      用户已有带屏产品【预发布测试专用带屏音箱】

        当       用户编辑【预发布测试专用带屏音箱】设备
        那么      浏览器显示【设备信息】页面
        当       用户复制client_id
        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 建立连接后同步客户端状态
        当       iFlyOS客户端发送event【System】，【UserInactivityReport】，参数【inactiveTimeInSeconds】为【3600】
        那么      iFlyOS服务端回复状态为【200】成功

    @TypicalCase, @SpeechRecognizer
    场景: 语音识别-唤醒后不说话

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户唤醒后不说话的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为空白内容
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【我走神了，可以再说一次吗】
        # 服务端下发追问
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【确认】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为空白内容
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端下行通道回复的directive为【SpeechRecognizer】，【StopCapture】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【还是没听清，等一下再跟我说吧】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    # 未有排期

    @TypicalCase, @HardwareControl, @disable
    场景大纲: 硬件控制-打开设备

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开客厅吊灯】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【已打开】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 打开客厅吊灯        |
            | 打开浴室浴霸        |
            | 打开房间抽湿机       |
            | 打开客厅空调        |

    @TypicalCase, @HardwareControl, @disable
    场景大纲: 硬件控制-关闭设备
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【硬件控制】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【关闭客厅吊灯】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【已关闭】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 关闭客厅吊灯        |
            | 关闭浴室浴霸        |
            | 关闭房间抽湿机       |
            | 关闭客厅空调        |

    @TypicalCase, @TemperatureControl, @disable
    场景大纲: 温度控制-设置温度
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【硬件控制】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【把客厅温度设置为26度】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【温度已调整】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 把客厅温度设置为26度   |
            | 把冰箱温度调到10度    |

    @TypicalCase, @TemperatureControl, @disable
    场景大纲: 温度控制-调整温度
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【硬件控制】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【温度已调整】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子: 语料
            | voice_content |
            | 把客厅温度调高一点     |
            | 把客厅温度调低一点     |
            | 房间太冷了         |
            | 房间太热了         |

# 扩展用例

    @ExtraCase，@Event # 200
    场景: Event，header中参数name为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        当       iFlyOS客户端发送event【SpeechRecognizer】，【WrongName】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Event # 200
    场景: Event，header中参数【namespace】为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        当       iFlyOS客户端发送event【WrongNameSpace】，【Recognize】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【profile】为【CLOSE_TALK】
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【profile】为【CLOSE_TALK】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【profile】为【NEAR_FIELD】
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【profile】为【NEAR_FIELD】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【profile】为【FAR_FIELD】

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【profile】为【FAR_FIELD】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize # 200
    场景: 语音识别，payload中参数【profile】为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【profile】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize # 200
    场景: 语音识别，payload中参数【format】为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【format】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【initiator】【type】为【PRESS_AND_HOLD】
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为【PRESS_AND_HOLD】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【initiator】【type】为【TAP】
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为【TAP】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize
    场景: 语音识别，payload中参数【initiator】【type】为【WAKEWORD】
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为【WAKEWORD】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Recognize # 200
    场景: 语音识别，payload中参数【initiator】【type】为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize # 200
    场景: 语音识别，payload中参数【initiator】【payload】【wakeWordIndices】【startIndexInSamples】为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为【WAKEWORD】，参数【initiator】【payload】【wakeWordIndices】【startIndexInSamples】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize # 200
    场景: 语音识别，payload中参数【initiator】【payload】【wakeWordIndices】【endIndexInSamples】为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，参数【initiator】【type】为【WAKEWORD】，参数【initiator】【payload】【wakeWordIndices】【endIndexInSamples】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，payload中参数【initiator】【payload】【token】为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开成语接龙】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【嗨，我们来玩成语接龙吧，你先说一个成语。】
        #那么      iFlyOS服务端回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【瓜田李下】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【瓜田李下】，参数【initiator】【payload】【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，payload中参数【profile】，【format】，【initiator】【type】，【initiator】【payload】【wakeWordIndices】【startIndexInSamples】，【initiator】【payload】【wakeWordIndices】【endIndexInSamples】，【initiator】【payload】【token】为空值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开
        假如      用户产品【成语接龙】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【打开成语接龙】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【嗨，我们来玩成语接龙吧，你先说一个成语。】
        那么      iFlyOS服务端回复的directive为【SpeechRecognizer】，【ExpectSpeech】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【瓜田李下】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【瓜田李下】，参数【profile】，【format】，【initiator】【type】，【initiator】【payload】【wakeWordIndices】【startIndexInSamples】，【initiator】【payload】【wakeWordIndices】【endIndexInSamples】，【initiator】【payload】【token】为空值
        那么      iFlyOS服务端回复状态为【400】错误，而且参数【error】为【非法wakeWordIndices】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，payload为空
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，payload为空
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，multipart里只有metadata，没有audio
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，multipart里只有metadata，没有audio
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize，@wip # 200
    场景: 语音识别，multipart里只有audio，没有metadata
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，multipart里只有audio，没有metadata，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize，@wip
    场景: 语音识别，header没有Boundary
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，header没有Boundary，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，header里的Boundary与各part的Boundary不一致
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，header里的Boundary与各part的Boundary不一致，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Recognize, @wip
    场景: 语音识别，最后一part没有结束Boundary，使用了间隔Boundary
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，最后一part没有结束Boundary，使用了间隔Boundary，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-初次启动时，从IDLE状态切换到PLAY状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】，使用以下PlaybackState上下文
            | token | offsetInMilliseconds | playerActivity |
            | NULL  | 0                    | IDLE           |
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-正在缓冲被清空播放队列，从BUFFER_UNDERRUN状态切换到STOPPED状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端音乐正在缓冲

        # 模拟用户说出【清空播放队列】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【清空播放队列】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【ClearQueue】，参数【clearBehavior】为【CLEAR_ALL】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断然后停止，从PLAY状态切换到PAUSED状态，从PAUSED状态切换到STOPPED状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被停止后再开始播放，从PLAY状态切换到STOPPED状态，从STOPPED状态切换到PLAY状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

        # 模拟用户说出【继续播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【继续播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-音乐播放失败，从PLAY状态切换到STOPPED状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFailed】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-下一首歌播放失败
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【ENQUEUE】

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复下一首歌播放失败
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFailed】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-链接播一首歌播放直到结束，从PLAY状态切换到FINISHED状态
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【204】成功

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportDelayInMilliseconds
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportDelayInMilliseconds】为【2000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】

        # 回复播放进度
        当       用户等待2秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportDelayElapsed】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportDelayInMilliseconds，但没有回复ProgressReportDelayElapsed事件
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportDelayInMilliseconds】为【2000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待5秒

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportIntervalInMilliseconds
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportIntervalInMilliseconds】为【1000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待1秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待1秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportIntervalInMilliseconds，但没有回复ProgressReportIntervalElapsed事件
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportIntervalInMilliseconds】为【1000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待3秒

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【停止播放】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【停止播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-播放流式音乐，PlaybackStarted事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放流式音乐，PlaybackStarted事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-播放流式音乐，PlaybackStarted事件payload中的token和offsetInMilliseconds为空值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，参数【token】，【offsetInMilliseconds】为空值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-播放流式音乐，PlaybackStarted事件payload为空值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的歌】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的歌】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，带Binary Audio Attachment

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】，payload为空值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackNearlyFinished事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackNearlyFinished事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportDelayInMilliseconds，ProgressReportDelayInMilliseconds事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportDelayInMilliseconds】为【2000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待2秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportDelayElapsed】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportDelayInMilliseconds，ProgressReportDelayInMilliseconds事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportDelayInMilliseconds】为【2000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待2秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportDelayElapsed】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportIntervalInMilliseconds，ProgressReportIntervalElapsed事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportIntervalInMilliseconds】为【1000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待1秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer, @wip
    场景: 音乐点播-链接播放，带progressReportIntervalInMilliseconds，ProgressReportIntervalElapsed事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】，【progressReportIntervalInMilliseconds】为【1000】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复播放进度
        当       用户等待1秒
        当       iFlyOS客户端发送event【AudioPlayer】，【ProgressReportIntervalElapsed】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterStarted事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterStarted事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Play】，参数【playBehavior】为【REPLACE_ALL】

        # 回复开始播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStarted】
        那么      iFlyOS服务端回复状态为【200】成功

        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterStarted】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterFinished事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterFinished事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterFinished事件payload中的stutterDurationInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，参数【stutterDurationInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackStutterFinished事件payload中缺少stutterDurationInMilliseconds
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】，缺少参数【stutterDurationInMilliseconds】
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # blocked by 204
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackFinished事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【204】成功

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer #blocked by 204
    场景: 音乐点播-链接播一首歌播放直到结束，PlaybackFinished事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【我要听周杰伦的简单爱】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【我要听周杰伦的简单爱】
        那么      iFlyOS服务端回复状态为【200】成功

        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderPlayerInfo】
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【为您播放】
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
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStutterFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复即将播放结束
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackNearlyFinished】
        那么      iFlyOS服务端回复状态为【204】成功

        # 回复结束播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackFinished】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 播放控制-pause//暂停播放，PlaybackStopped事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【播放控制】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【暂停播放】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【暂停播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer # 200
    场景: 播放控制-pause//暂停播放，PlaybackStopped事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【播放控制】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 模拟用户说出【暂停播放】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【暂停播放】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【AudioPlayer】，【Stop】
        # 回复停止播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackStopped】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断再恢复，PlaybackPaused事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断再恢复，PlaybackPaused事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断再恢复，PlaybackResumed事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为【60000】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @AudioPlayer
    场景: 音乐点播-播放中被对话打断再恢复，PlaybackResumed事件payload中的offsetInMilliseconds为负数
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【音乐点播】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功
        假如      iFlyOS客户端正在播放音乐

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackPaused】，参数【offsetInMilliseconds】为【60000】
        那么      iFlyOS服务端回复状态为【200】成功
        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        # 回复暂停播放状态
        当       iFlyOS客户端发送event【AudioPlayer】，【PlaybackResumed】，参数【offsetInMilliseconds】为负数
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Chatting
    场景: 通用闲聊，SpeechStarted事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【通用闲聊】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Chatting
    场景: 通用闲聊，SpeechFinished事件payload中的token为错误值
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        当       用户点击【云端技能】控件
        那么      浏览器显示【云端技能】页面
        假如      用户产品【通用闲聊】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【你好】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【你好】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为随机内容
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】，参数【token】为错误值
        那么      iFlyOS服务端回复状态为【400】错误，而且【payload】参数【code】为【INVALID_REQUEST_EXCEPTION】

    @ExtraCase, @Alerts
    场景: 闹钟提醒-设置闹钟失败
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        #        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【闹钟提醒】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【提醒我中午十二点吃饭】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【提醒我中午十二点吃饭】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务下发意图
        那么      iFlyOS服务端回复的directive为【Alerts】，【SetAlert】
        当       iFlyOS客户端发送event【Alerts】，【SetAlertFailed】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【?】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Alerts
    场景: 闹钟提醒-删除闹钟失败
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
        #        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【闹钟提醒】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【删除十二点钟的闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【删除十二点钟的闹钟】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【Alerts】，【DeleteAlert】
        当       iFlyOS客户端发送event【Alerts】，【DeleteAlertFailed】
        那么      iFlyOS服务端回复状态为【200】成功
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【?】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Alerts
    场景大纲: 闹钟提醒-没有闹钟时删除所有闹钟成功
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【闹钟提醒】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        假如      iFlyOS客户端没有闹钟
        # 模拟用户说出【删除所有闹钟】的识别过程
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【您没有设置闹钟】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content |
            | 删除所有闹钟        |

    @ExtraCase, @Weather
    场景大纲: 天气查询-查询的天气的日期不在未来一周内
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret
#        当       用户点击【云端技能】控件
#        那么      浏览器显示【云端技能】页面
#        假如      用户产品【天气查询】技能已打开

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        # 模拟用户说出【今天天气怎么样】
        当       iFlyOS客户端发送event【SpeechRecognizer】，【Recognize】，用户音频为【<voice_content>】
        那么      iFlyOS服务端回复状态为【200】成功
#        那么      iFlyOS服务端回复的directive为【TemplateRuntime】，【RenderTemplate】，参数【type】为【WeatherTemplate】
        # 服务端下发意图
        那么      iFlyOS服务端回复的directive为【SpeechSynthesizer】，【Speak】，TTS音频为【未查询到城市日期的天气情况】
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechStarted】
        那么      iFlyOS服务端回复状态为【200】成功
        当       iFlyOS客户端发送event【SpeechSynthesizer】，【SpeechFinished】
        那么      iFlyOS服务端回复状态为【200】成功

        那么       iFlyOS服务端下行通道回复的directive为【XFSpeechRecognizer】，【IntermediateText】，参数【text】为【<voice_content>】

        例子:     语料
            | voice_content  |
            | 十二月三十一号广州天气怎么样 |
#            | 昨天合肥天气怎么样      | 问昨天天气仍然会返回TemplateRuntime
            | 查询北京二月三十号天气    |

    @ExtraCase, @System
    场景: 系统事件-用户不活动报告
#        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【预发布测试专用带屏音箱】
#
#        当       用户编辑【预发布测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        当       iFlyOS客户端发送event【System】，【UserInactivityReport】，参数【inactiveTimeInSeconds】为【3600】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @System
    场景: 系统事件-上报软件版本
        #        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【测试专用带屏音箱】
#
#        当       用户编辑【测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        当       iFlyOS客户端发送event【System】，【SoftwareInfo】，参数【firmwareVersion】为【1】
        那么      iFlyOS服务端回复状态为【200】成功

    @ExtraCase, @Settings
    场景: 设置接口-更新设置
#        假如      用户已登录讯飞开放平台账号
#        假如      用户已有带屏产品【预发布测试专用带屏音箱】
#
#        当       用户编辑【预发布测试专用带屏音箱】设备
#        那么      浏览器显示【设备信息】页面
#        当       用户复制client_id
#        当       用户点击【复制】复制client_secret

        假如     用户iFlyOS客户端设备未绑定
        当       用户绑定iFlyOS客户端设备
        那么     iFlyOS客户端绑定成功

        当       iFlyOS客户端发送event【Settings】，【SettingsUpdated】，参数【key】为【test_key】，参数【value】为【test_value】
        那么      iFlyOS服务端回复状态为【200】成功
