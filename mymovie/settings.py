"""
Django settings for mymovie project.

Generated by 'django-admin startproject' using Django 2.1.5.

For more information on this file, see
https://docs.djangoproject.com/en/2.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/2.1/ref/settings/
"""

import os

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/2.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'v)i3bek)kak^195#no^gew_vu@u!f#q(ln032a*zb!8qre^l!2'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []


# Application definition

INSTALLED_APPS = [
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'ckeditor',  # 注册富文本编辑
    'ckeditor_uploader', # 注册符文版编辑器的图片上传功能
    'movie',
    'ReadCount',
    'comment',
    'like',
    'user',
    'notifications',
    'crispy_forms',
    'my_notifications',
    'collected',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'mymovie.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [
            os.path.join(BASE_DIR,'templates'),
        ],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

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
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'ceshi',
        'USER': 'root',
        'PASSWORD': 'shuaishuai',
        'HOST': '127.0.0.1',
        'PORT': '3306',
    }
}

# Password validation
# https://docs.djangoproject.com/en/2.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]


# Internationalization
# https://docs.djangoproject.com/en/2.1/topics/i18n/

LANGUAGE_CODE = 'zh-hans'

TIME_ZONE = 'Asia/Shanghai'

USE_I18N = True

USE_L10N = True

USE_TZ = True


# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.1/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR,'static'),
]

# 配置media
MEDIA_URL = '/media/'  # 配置上传路径
MEDIA_ROOT = os.path.join(BASE_DIR,'media')

# 配置评论的ckeditor
CKEDITOR_CONFIGS = {
    'default': {},
    'comment_ckreitor': {
        'toolbar': 'custom',
            'toolbar_custom': [
                ['Bold', 'Italic', 'Underline', 'Strike', 'Subscript', 'Superscript'],
                ["TextColor", "BGColor", 'RemoveFormat'],
                ['NumberedList', 'BulletedList'],
                ['Link', 'Unlink'],
                ["Smiley", "SpecialChar", 'Blockquote'],
            ],
            'width': 'auto',
            'height': '180',
            'tabSpaces': 4,
            'removePlugins': 'elementspath',
            'resize_enabled': False,
    }
}

#  配置ckeditor
CKEDITOR_UPLOAD_PATH = 'upload/'
# 数据库缓存
CACHES = {
    'default': {
        'BACKEND': 'django.core.cache.backends.db.DatabaseCache',
        'LOCATION': 'my_cache_table',
    }
}

# 发送邮件设置
# https://docs.djangoproject.com/en/2.0/ref/settings/#email
# https://docs.djangoproject.com/en/2.0/topics/email/
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.qq.com'
EMAIL_PORT = 25
EMAIL_HOST_USER = '645164577@qq.com'
EMAIL_HOST_PASSWORD = 'lamsmlveysdmbfgb'  # 授权码
EMAIL_SUBJECT_PREFIX = '电影网站'
EMAIL_USE_TLS = True  # 与SMTP服务器通信时，是否启动TLS链接(安全链接)

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