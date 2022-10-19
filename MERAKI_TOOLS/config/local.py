import os
import dj_database_url

from .common import Common


class Local(Common):

    # Mail
    # EMAIL_HOST = 'localhost'
    # EMAIL_PORT = 1025
    # EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'
    
    
    EMAIL_HOST = 'smtp.gmail.com'
    EMAIL_PORT = 587
    EMAIL_HOST_USER = 'medikim3552@gmail.com'  # ex) bum752@gmail.com
    EMAIL_HOST_PASSWORD = 'wddtgjqzqurmcucc'  # ex) P@ssw0rd
    SERVER_EMAIL = 'medikim3552@gmail.com'  # ex) bum752@gmail.com
    DEFAULT_FROM_MAIL = 'medikim3552'  # ex) bum752
    EMAIL_USE_TLS = True

    # Postgres
    DATABASES = {
        'default': dj_database_url.config(
            # postgres://USER:PASSWORD@HOST:PORT/NAME
            default='postgres://postgres:postgres@postgres:5432/meraki_dev',
            conn_max_age=int(os.getenv('POSTGRES_CONN_MAX_AGE', 0)),
        )
    }
    DATABASES['default']['ATOMIC_REQUESTS'] = True

    INSTALLED_APPS = Common.INSTALLED_APPS
