# app/views.py
from django.apps import AppConfig

class MyAppConfig(AppConfig):
    name = 'MY_APP_NAME'
    def ready(self):
        print('asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd')