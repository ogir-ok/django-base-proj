from celery import shared_task
from django.conf import settings
from django.contrib.auth import get_user_model
from django.core.mail import send_mail

from config.celery import app

User = get_user_model()

@shared_task
def send_registration_email(email):
    send_mail('Hello', 'Please confirm your email', settings.DEFAULT_FROM_EMAIL, [email])