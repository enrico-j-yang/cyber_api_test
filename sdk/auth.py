# -*- coding: utf-8 -*-
'''
认证授权模块
'''
import datetime
import json
import logging
import requests
from lxml import html as HTML

import sdk.configurate as configurate
from global_variables import *


class iFlyOSAuth:
    '''
    iFlyOS　登陆授权类
    '''

    def __init__(self, output, client_id=None, client_secret=None):
        '''
        处理类初始化
        :param output:配置文件保存地址
        :param client_id: 开发者注册信息
        :param client_secret: 开发者注册信息
        :return:
        '''
        self.config = configurate.load(client_id, client_secret)
        self.output = output
        self.client_id = client_id
        self.client_secret = client_secret

        self.token_url = TOKEN_URL

    def auth_request(self, client_id=CLIENT_ID, client_secret=CLIENT_SECRET):
        '''
        发起认证 iFlyOS
        :param client_id:开发者注册信息
        :param client_secret: 开发者注册信息
        :return:
        '''
        if self.config.get('access_token'):
            nowadays = datetime.datetime.now()
            outdated = datetime.datetime.strptime(self.config['expiry'], '%a %b %d %H:%M:%S %Y')
            if nowadays < outdated:
                return

        ses = requests.Session()
        params = {}

        # 登录
        r = ses.get(self.token_url + '/user/login')
        if r.status_code != 200:
            logging.error('/user/login error')
            return False

        if r.headers.get('content-type').find('text/html') >= 0:
            resp_body = r.text
            logging.debug("response body:" + resp_body)
            html = HTML.fromstring(resp_body)
            if len(html.xpath('//form/input[@name="_csrf_token"]/attribute::value')) == 0:
                logging.error("error in /oauth/device")
                return
            else:
                csrf_token = str(html.xpath('//form/input[@name="_csrf_token"]/attribute::value')[0])
                utf8 = str(html.xpath('//form/input[@name="_utf8"]/attribute::value')[0])
            params = {
                'cyber_user[phone]': PHONE_NUMBER,
                'cyber_user[captcha]': CAPTCHAR,
                '_csrf_token': csrf_token,
                '_utf8': utf8,
            }

        r = ses.post(self.token_url + '/user/login', params=params)
        if r.status_code != 200:
            logging.error('/user/login error')
            return False

        device_id = os.getenv("DEVICE_ID", "ENRICO_TEST")
        # 获取授权码
        import json
        params = {}
        params['client_id'] = client_id
        params['scope'] = "user_ivs_all"
        user_ivs_all = {}
        scope_data = {}
        scope_data['device_id'] = device_id
        user_ivs_all['user_ivs_all'] = scope_data
        params['scope_data'] = json.dumps(user_ivs_all)
        from six.moves.urllib.parse import urlencode

        r = ses.post(self.token_url + '/oauth/ivs/device_code', params=urlencode(params))
        if r.status_code != 200 or r.headers.get("content-type").find('application/json') < 0:
            logging.error('/oauth/ivs/device_code error')
            return False

        resp_body = r.json()
        logging.debug("response body:" + str(resp_body))
        device_code = r.json().get('device_code')
        user_code = r.json().get('user_code')

        # 请求授权
        params = {
            "user_code": user_code,
        }
        r = ses.get(self.token_url + '/oauth/device', params=params)
        if r.status_code != 200 or r.headers.get('content-type').find('text/html') < 0:
            logging.error('/oauth/device error')
            return False

        resp_body = r.text
        logging.debug("response body:" + resp_body)
        html = HTML.fromstring(resp_body)
        if len(html.xpath('//form/input[@name="_csrf_token"]/attribute::value')) == 0:
            logging.error("error in /oauth/device")
            return
        else:
            csrf_token = str(html.xpath('//form/input[@name="_csrf_token"]/attribute::value')[0])
            utf8 = str(html.xpath('//form/input[@name="_utf8"]/attribute::value')[0])
        params = {
            'oauth_access_grant[user_code]': user_code,
            '_csrf_token': csrf_token,
            '_utf8': utf8,
        }
        r = ses.post(self.token_url + '/oauth/device', params=params)
        if r.status_code != 200 or r.headers.get('content-type').find('text/html') < 0:
            logging.error("error in /oauth/device")
            return

        resp_body = r.text
        logging.debug("response body:" + resp_body)
        html = HTML.fromstring(resp_body)
        if len(html.xpath('//form/input[@name="_csrf_token"]/attribute::value')) == 0:
            logging.error("error in /oauth/ivs/device")
            return
        else:
            csrf_token = str(
                html.xpath('//form/input[@name="_csrf_token"]/attribute::value')[0])
            utf8 = str(html.xpath('//form/input[@name="_utf8"]/attribute::value')[0])
        params = {
            'oauth_access_grant[user_code]': user_code,
            '_csrf_token': csrf_token,
            '_utf8': utf8,
        }
        r = ses.post(self.token_url + '/oauth/device_confirm', params=params, allow_redirects=False)
        if r.status_code != 200 or r.headers.get('content-type').find('text/html') < 0:
            logging.error("error in /oauth/device_confirm")
            return

        # 获取token
        params = {
            'client_id': client_id,
            'grant_type': 'urn:ietf:params:oauth:grant-type:device_code',
            'device_code': device_code,
        }
        r = ses.post(self.token_url + '/oauth/ivs/token', params=params, allow_redirects=False)
        if r.status_code != 200 or r.headers.get("content-type").find('application/json') < 0:
            logging.error("error in /oauth/ivs/token")
            return

        config = r.json()
        self.config['refresh_token'] = config['refresh_token']

        if 'access_token' in config:
            date_format = "%a %b %d %H:%M:%S %Y"
            expiry_time = datetime.datetime.utcnow() + datetime.timedelta(
                seconds=config['expires_in'])
            self.config['expiry'] = expiry_time.strftime(date_format)
            self.config['access_token'] = config['access_token']

        # print(json.dumps(self.config, indent=4))
        configurate.save(self.config, configfile=self.output)
        return
