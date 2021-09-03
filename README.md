# CyberOS测试脚本

## 环境配置

### 安装Python3

测试脚本由python编写，为避免版本兼容问题，请安装python3版本

Windows平台请到https://www.python.org/downloads/ 下载安装3.6版本

MacOS平台可以通过brew install python3安装

### 安装pip包管理工具

pip包管理工具可以比较方便地安装python各种模块，安装说明请查看以下网址

https://pip.pypa.io/en/stable/installing/

### 安装chromedriver

测试脚本使用到chromedriver进行页面测试，请先安装chromedriver。
然后将可以执行路径在environment.py的before_all方法中声明

```
chromedriver = "/usr/local/bin/chromedriver"
options = ChromeOptions()
options.add_argument("--start-fullscreen")
context.driver = webdriver.Chrome(chromedriver, options=options)
```

### 安装opuslib

由于pip直接安装的opuslib有一个[bug](https://stackoverflow.com/questions/17728706/python-portaudio-opus-encoding-decoding)

请使用https://github.com/OnBeep/opuslib

>pip install git+https://github.com/OnBeep/opuslib.git

## 脚本设置

### 调试模式

调试脚本时可以在初始化用户输入实例、系统外部事件实例、系统内部事件实例和实际结果实例时传mock_enable为True的值，
```
def before_all(context):

    context.CATI = TestInput()                                      
    context.CATI.sysHIEvt = HumanInput(mock_enable=True)            
    context.CATI.sysIntEvt = SystemInternalEvent(mock_enable=True)  
    context.CATI.sysExtEvt = SystemExternalEvent(mock_enable=True)  
    context.CAER = ExpectedResult()                                 
    context.CAAR = ActualResult(mock_enable=True)                   
```
此时可以调用各个实例的mock_value方法设置对应键值，无需与真实测试对象联调。

### 实测模式

初始化用户输入实例、系统外部事件实例、系统内部事件实例和实际结果实例时不传参数，默认是实测模式。需要真实的外部系统、内部状态、用户输入进行联调。

## 运行脚本

### 运行全部场景（用例）
>behave --no-logcapture -k

### 以标签名批量运行场景（用例）

>behave --no-logcapture -k -t tagname

其中tagname为标签名字，大小写敏感

## 脚本发送数据确认

运行完测试脚本后，会生成behave_test.log的日志文件，日志的等级请修改environment.py的日志设置的level
```
logging.basicConfig(level=logging.INFO,
                    format='%(asctime)s %(filename)s[line:%(lineno)d] %(levelname)s %(message)s',
                    datefmt='%a, %d %b %Y %H:%M:%S',
                    filename='behave_test.log',
                    filemode='w')
```
level可以选择，ERROR,WARNING,INFO,DEBUG

