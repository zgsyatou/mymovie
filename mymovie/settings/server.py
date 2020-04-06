"""
Django settings for mymovie project.

Generated by 'django-admin startproject' using Django 2.1.5.

For more information on this file, see
https://docs.djangoproject.com/en/2.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.1/ref/settings/
"""

import os
from .public import *
# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ['SECRET_KEY']

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False

ALLOWED_HOSTS = ['*']


WSGI_APPLICATION = 'mymovie.wsgi.application'


# Database
# https://docs.djangoproject.com/en/2.1/ref/settings/#databases
'''
DATABASES = {
   'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
    }
}
'''
DATABASE_PASSWD = os.environ['DATABASE_PASSWD']
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'ceshi',
        'USER': 'root',
        'PASSWORD': 'DATABASE_PASSWD',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}

# 发送邮件设置
# https://docs.djangoproject.com/en/2.0/ref/settings/#email
# https://docs.djangoproject.com/en/2.0/topics/email/
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.qq.com'
EMAIL_PORT = 465
EMAIL_HOST_USER = '645164577@qq.com'
EMAIL_HOST_PASSWORD = os.environ['QQ_EMAIL_PASSWD']  # 授权码
EMAIL_SUBJECT_PREFIX = '电影网站'
EMAIL_USE_SSL = True  # 与SMTP服务器通信时，是否启动TLS链接(安全链接)

# QQ配置信系
QQ_APP_ID = 'appid'
QQ_RESVER = '回调地址'
QQ_STATE = 'zgs_seccress'
QQ_APP_KEYS = 'key值'

# 配置notification
DJANGO_NOTIFICATIONS_CONFIG = { 
        'USE_JSONFIELD': True,
    }

# 配置django美化表单
CRISPY_TEMPLATE_PACK = 'bootstrap3'

# 配置管理员信息
ADMINS = (
    ('admin','645164577@qq.com'),
) 

# 日志文件
LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'file': {
            'level': 'DEBUG',
            'class': 'logging.FileHandler',
            'filename': '/home/code/mymove/mymovie_debug.log',
        },
        # 管理员邮件记录器
        'mail_admins': {
            'level': 'ERROR',
            'class': 'django.utils.log.AdminEmailHandler',
        }
    },
    'loggers': {
        'django': {
            'handlers': ['file'],
            'level': 'DEBUG',
            'propagate': True,
        },

        # 日志记录器
        'django.request': {
            'handlers': ['mail_admins'],
            'level': 'ERROR',
            'propagate': False,
        },
    },
}