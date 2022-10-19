from __future__ import absolute_import
from configurations import importer
from celery import Celery
# from kombu import Exchange, Queue
from django.conf import settings

import os
# Django의 세팅 모듈을 Celery의 기본으로 사용하도록 등록합니다.
os.environ.setdefault("DJANGO_SETTINGS_MODULE", "MERAKI_TOOLS.config")

# Mode는 Local
os.environ.setdefault("DJANGO_CONFIGURATION", "Production")


importer.install()

app = Celery('MERAKI_TOOLS.celery', broker='amqp://guest:guest@rabbitmq:5672//')

# 문자열로 등록한 이유는 Celery Worker가 Windows를 사용할 경우
# 객체를 pickle로 묶을 필요가 없다는 것을 알려주기 위함입니다.
app.config_from_object('django.conf:settings')
app.autodiscover_tasks(lambda: settings.INSTALLED_APPS)
app.conf.timezone = 'Asia/Seoul'

app.conf.update(
    # CELERY_TIMEZONE='Asia/Seoul',
    CELERY_ENABLE_UTC=False
)


#####
# 이 파일은 celery를 위한 기본 설정 파일입니다.
# 이 곳에서 전반적인 Celery를 위한 broker 설정 및 셋팅을 해줍니다.
#####
