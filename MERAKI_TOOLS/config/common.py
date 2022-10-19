# 표준 라이브러리
import os
import dj_database_url
from datetime import timedelta
from django.urls import reverse_lazy

# 서드파티 라이브러리
from distutils.util import strtobool
from configurations import Configuration

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


class Common(Configuration):

    INSTALLED_APPS = (

        'django.contrib.admin',
        'django.contrib.auth',
        'django.contrib.contenttypes',
        'django.contrib.sessions',
        'django.contrib.messages',
        'django.contrib.staticfiles',
        'django.contrib.postgres',   # 풀텍스트 검색을 위해 추가
        'django.contrib.sites',
        'debug_toolbar',

        # Third party apps
        'allauth',
        'allauth.account',
        'allauth.socialaccount',

        'cacheops',                  # https://github.com/Suor/django-cacheops
        'corsheaders',               # https://github.com/adamchainz/django-cors-headers

        'django_filters',            # https://django-filter.readthedocs.io/en/master/index.html
        'drf_yasg',                  # API Documentation
        'django_extensions',

        'rest_framework',
 

        # apps
        'MERAKI_TOOLS.users',  # 사용자
        'MERAKI_TOOLS.patient',  # 환자 모델
        'MERAKI_TOOLS.doctor',  # 환자 모델
     

    )
    TAGGIT_DEFAULT_SLUGIFY_FUNCTION = 'django.template.defaultfilters.slugify'

    # https://docs.djangoproject.com/en/2.0/topics/http/middleware/
    MIDDLEWARE = (
        'debug_toolbar.middleware.DebugToolbarMiddleware',
        'django.middleware.security.SecurityMiddleware',
        'django.contrib.sessions.middleware.SessionMiddleware',
        'corsheaders.middleware.CorsMiddleware',
        'django.middleware.common.CommonMiddleware',
        'django.middleware.csrf.CsrfViewMiddleware',
        'corsheaders.middleware.CorsPostCsrfMiddleware',
        'django.contrib.auth.middleware.AuthenticationMiddleware',
        'django.contrib.messages.middleware.MessageMiddleware',
        'django.middleware.clickjacking.XFrameOptionsMiddleware',

    )

    ALLOWED_HOSTS = ["*"]
    ROOT_URLCONF = 'MERAKI_TOOLS.urls'

    # SECRET_KEY는 환경변수를 통해서 로딩되도록 설정 _ docker-compose 파일의 각 장고 환경변수 확인
    SECRET_KEY = os.getenv('DJANGO_SECRET_KEY')
    WSGI_APPLICATION = 'MERAKI_TOOLS.wsgi.application'

    # Email
    EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
    

    ADMINS = (
        ('Author', 'medikim3551@gmail.com'),
    )

    # General
    APPEND_SLASH = False
    TIME_ZONE = 'Asia/Seoul'
    LANGUAGE_CODE = 'ko-KR'
    USE_I18N = True
    USE_L10N = True
    USE_TZ = False
    LOGIN_REDIRECT_URL = '/'

    STATIC_ROOT = os.path.normpath(
        os.path.join(os.path.dirname(BASE_DIR), 'static'))
    STATICFILES_DIRS = []
    STATIC_URL = '/static/'
    STATICFILES_FINDERS = (
        'django.contrib.staticfiles.finders.FileSystemFinder',
        'django.contrib.staticfiles.finders.AppDirectoriesFinder',
    )

    # Media files
    MEDIA_ROOT = os.path.join(os.path.dirname(BASE_DIR), 'media')
    MEDIA_URL = '/media/'

    TEMPLATES_ROOT = os.path.join(os.path.dirname(BASE_DIR), 'templates')

    TEMPLATES = [
        {
            'BACKEND': 'django.template.backends.django.DjangoTemplates',
            'DIRS': TEMPLATES_ROOT,
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

    # 디버깅 여부를 환경변수로부터 불러오고 / 없다면 False
    DEBUG = strtobool(os.getenv('DJANGO_DEBUG', 'no'))

    # Password Validation
    # https://docs.djangoproject.com/en/2.0/topics/auth/passwords/#module-django.contrib.auth.password_validation
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

    # Logging
    LOGGING = {
        'version': 1,
        'disable_existing_loggers': False,
        'formatters': {
            'django.server': {
                '()': 'django.utils.log.ServerFormatter',
                'format': '[%(server_time)s] %(message)s',
            },
            'verbose': {
                'format': '%(levelname)s %(asctime)s %(module)s %(process)d %(thread)d %(message)s'
            },
            'simple': {
                'format': '%(levelname)s %(message)s'
            },
        },
        'filters': {
            'require_debug_true': {
                '()': 'django.utils.log.RequireDebugTrue',
            },
        },
        'handlers': {
            'django.server': {
                'level': 'INFO',
                'class': 'logging.StreamHandler',
                'formatter': 'django.server',
            },
            'console': {
                'level': 'DEBUG',
                'class': 'logging.StreamHandler',
                'formatter': 'simple'
            },
            'mail_admins': {
                'level': 'ERROR',
                'class': 'django.utils.log.AdminEmailHandler'
            },
            
        },
        'loggers': {
            'django': {
                'handlers': ['console'],
                'propagate': True,
            },
            'django.server': {
                'handlers': ['django.server'],
                'level': 'INFO',
                'propagate': False,
            },
            'django.request': {
                'handlers': ['mail_admins', 'console'],
                'level': 'ERROR',
                'propagate': False,
            },
            'django.db.backends': {
                'handlers': ['console'],
                'level': 'INFO'
            },
           
        }
    }

    # 장고에서 기본으로 제공하는 사용자 모델 말고 확장해서 쓰기위해서는 유저 앱을만들고 상속을 받아서 User 모델을 만들어야한다.
    # 추후에 각 기관별로 관리하고싶다면 이부분에 필드를 추가해서 관리하기
    AUTH_USER_MODEL = 'users.User'

    # *********************************************************
    # Rest framework Config
    # *********************************************************

    REST_FRAMEWORK = {
        'DEFAULT_PAGINATION_CLASS': 'rest_framework.pagination.PageNumberPagination',
        # 페이지당 가져올 아이템 갯수
        'PAGE_SIZE': int(os.getenv('DJANGO_PAGINATION_LIMIT', 20)),
        'DATETIME_FORMAT': '%Y-%m-%dT%H:%M:%S%z',
        'DEFAULT_RENDERER_CLASSES': (
            'rest_framework.renderers.JSONRenderer',
            'rest_framework.renderers.BrowsableAPIRenderer',
        ),
        'DEFAULT_PERMISSION_CLASSES': [
            # 'rest_framework.permissions.IsAuthenticated',  # 인증기능 ON/OFF
        ],
        'DEFAULT_FILTER_BACKENDS': (
            'django_filters.rest_framework.DjangoFilterBackend',  # 필터링
        ),
        'DEFAULT_AUTHENTICATION_CLASSES': (
            'rest_framework_simplejwt.authentication.JWTAuthentication',
        )
    }


    # *********************************************************
    # CORS Config
    # *********************************************************

    CORS_ALLOW_CREDENTIALS = True
    CORS_ORIGIN_ALLOW_ALL = True

    CORS_ALLOW_METHODS = [
        'DELETE',
        'GET',
        'OPTIONS',
        'PATCH',
        'POST',
        'PUT',
    ]

    CORS_ALLOW_HEADERS = [
        'accept',
        'accept-encoding',
        'authorization',
        'content-type',
        'dnt',
        'origin',
        'user-agent',
        'x-csrftoken',
        'x-requested-with',
        'host',
    ]

    # *********************************************************
    # FILE UPLOAD Config
    # *********************************************************

    # 파일 업로드 시 최대 갯수 설정
    DATA_UPLOAD_MAX_NUMBER_FIELDS = 9999999
    # 파일 업로드 시 메모리 체크 해제
    # DATA_UPLOAD_MAX_MEMORY_SIZE = None

    # *********************************************************
    # RABBITMQ Config
    # *********************************************************

    BROKER_HEARTBEAT = 0

    # *********************************************************
    # CELERY Config
    # *********************************************************

    CELERY_TIMEZONE = 'Asia/Seoul'
    CELERY_IGNORE_RESULT = True
    CELERY_RESULT_PERSISTENT = False
    CELERYD_PREFETCH_MULTIPLIER = 1
    CELERY_ACKS_LATE = True
    # CELERY_SEND_EVENTS = True

    # end CELERY Config

    # Django Debug Toolbar
    ## 개인 ip 확인후 입력.
    # INTERNAL_IPS = ['127.0.0.1','0.0.0.0','localhost']
    # def custom_show_toolbar(self):   

    #         return True


    # DEBUG_TOOLBAR_CONFIG = {   

    #     'SHOW_TOOLBAR_CALLBACK': custom_show_toolbar,

    # }



    DEBUG_TOOLBAR_PANELS = [
        'debug_toolbar.panels.versions.VersionsPanel',
        'debug_toolbar.panels.timer.TimerPanel',
        'debug_toolbar.panels.settings.SettingsPanel',
        'debug_toolbar.panels.headers.HeadersPanel',
        'debug_toolbar.panels.request.RequestPanel',
        'debug_toolbar.panels.sql.SQLPanel',
        'debug_toolbar.panels.staticfiles.StaticFilesPanel',
        'debug_toolbar.panels.templates.TemplatesPanel',
        'debug_toolbar.panels.cache.CachePanel',
        'debug_toolbar.panels.signals.SignalsPanel',
        'debug_toolbar.panels.logging.LoggingPanel',
        'debug_toolbar.panels.redirects.RedirectsPanel',
    ]

   

    # ROOT PATH
    ROOT_PATH = os.path.dirname(os.path.dirname(
        os.path.dirname(os.path.abspath(__file__))))

    # *********************************************************
    # 인증관련 설정
    # API 요청에 관련된 토큰을 설정하는 부분입니다.
    # JSON Web Token의 구조에 대해서 이해를 하시면 될 것 같습니다.
    # https://elfinlas.github.io/2018/08/12/whatisjwt-01/
    # 공식문서: https://github.com/davesque/django-rest-framework-simplejwt
    # JSON Web Token 설정
    # *********************************************************

    SIMPLE_JWT = {
        'ACCESS_TOKEN_LIFETIME': timedelta(days=1),
        'REFRESH_TOKEN_LIFETIME': timedelta(days=2),
        'ALGORITHM': 'HS256',
        'SIGNING_KEY': SECRET_KEY,
        'AUTH_HEADER_TYPES': ('JWT',),
        'SLIDING_TOKEN_LIFETIME': timedelta(minutes=5),
        'SLIDING_TOKEN_REFRESH_LIFETIME': timedelta(days=1),
    }

    SITE_ID = 1

    # 인증방식에 이메일 사용
    ACCOUNT_AUTHENTICATION_METHOD = 'email'

    # 이메일 필수
    ACCOUNT_EMAIL_REQUIRED = True

    # 유저명은 불필요
    ACCOUNT_USERNAME_REQUIRED = False

    # 이메일 인증 Off
    ACCOUNT_EMAIL_VERIFICATION = 'none'  # 'mandatory'

    # *********************************************************
    # Swagger 설정
    # *********************************************************

    # Swagger 셋팅
    # JWT 로그인 기능 On
    SWAGGER_SETTINGS = {
        'SECURITY_DEFINITIONS': {
            'api_key': {
                'type': 'apiKey',
                'in': 'header',
                'name': 'Authorization'
            }
        },
    }

    # *********************************************************
    # HTTPS Config
    # *********************************************************

    SECURE_PROXY_SSL_HEADER = (
        'HTTP_X_FORWARDED_PROTO', 'https')  # Swagger 사용에 필수

    # *********************************************************
    # Cache 설정
    # *********************************************************

    # TODO: Optimization
    # 현재는 전체에 대해서 캐싱 적용
    CACHEOPS = {
        '*.*': {'ops': (), 'timeout': 60*60},
    }

    # 캐시메모리로 REDIS 사용
    CACHEOPS_REDIS = {
        'host': 'redis',  # redis-server is on same machine
        'port': 6379,        # default redis port
        'db': 1,             # SELECT non-default redis database
    }
