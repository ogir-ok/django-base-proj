from .base import *
import os

SECRET_KEY = os.getenv('SECRET_KEY', SECRET_KEY)
STATIC_ROOT = '/static/'

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': os.environ.get('POSTGRES_DB', 'movies'),
        'USER': os.environ.get('POSTGRES_USER', 'postgres'),
        'PASSWORD': os.environ.get('POSTGRES_PASSWORD', '123'),
        'HOST': os.environ.get('POSTGRES_HOST', 'db'),
        'PORT': os.environ.get('POSTGRES_PORT', '5432'),
        'ATOMIC_REQUESTS': True
    }
}

LOGGING = {
    "version": 1,
    "disable_existing_loggers": False,
    "handlers": {"console": {"class": "logging.StreamHandler"}},
    "loggers": {
        "apps": {"level": "DEBUG", "handlers": ["console"]},
    },
}

CELERY_BROKER_URL = 'redis://redis:6379/0'


EMAIL_BACKEND = 'django.core.mail.backends.console.EmailBackend'