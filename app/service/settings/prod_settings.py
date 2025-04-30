from .base_settings import *


# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = os.environ.get('SECRET_KEY')

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = False
SENDGRID_SANDBOX_MODE_IN_DEBUG = DEBUG

# STATIC_ROOT = 'static'
# STATIC_URL = '/static/'

# MEDIA_ROOT = 'media'
# MEDIA_URL = '/media/'

LOGGING = {
    'version': 1,
    'disable_existing_loggers': False,
    'handlers': {
        'console': {
            'level': 'INFO',
            'class': 'logging.StreamHandler'
        },
    },
    'loggers': {
        'django': {
            'level': 'INFO',
            'handlers': ['console'],
        },
    },
}

AWS_ACCESS_KEY_ID = 'AKIAJUK4HNUS7WY7VQ6Q'
AWS_SECRET_ACCESS_KEY = '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'
AWS_STORAGE_BUCKET_NAME = 'ingeleser'
AWS_S3_CUSTOM_DOMAIN = '{0}.s3.amazonaws.com'.format(AWS_STORAGE_BUCKET_NAME)
AWS_S3_OBJECT_PARAMETERS = {
    'CacheControl': 'max-age=86400',
}

DEFAULT_FILE_STORAGE = 'service.app.storage_backends.MediaStorage'

EMAIL_USE_TLS = True
EMAIL_HOST = 'smtp.mailgun.org'
EMAIL_HOST_USER = 'postmaster@mg.ingeleser.com'
EMAIL_HOST_PASSWORD = '928d13a5603ece6740bf226eb36ba562'
EMAIL_PORT = 587

CONSTANCE_REDIS_PREFIX = 'constance: Ingeleser:'
CONSTANCE_REDIS_CONNECTION = {
    'host': REDIS_HOST,
    'port': REDIS_PORT,
    'db': 0,
}

CACHES = {
    'default': {
        'BACKEND': 'redis_cache.RedisCache',
        'LOCATION': [
            '{0}:{1}'.format(REDIS_HOST, REDIS_PORT)
        ],
        'OPTIONS': {
            'DB': 1,
        }
    },
    'sessions': {
        'BACKEND': 'redis_cache.RedisCache',
        'LOCATION': [
            '{0}:{1}'.format(REDIS_HOST, REDIS_PORT)
        ],
        'OPTIONS': {
            'DB': 2,
        }
    },
}
