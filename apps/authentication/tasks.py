from celery import shared_task
from django.conf import settings

from .views import *


@shared_task
def send_confirm_mail(email_subject, email_body, email):
    send_mail(email_subject, email_body, settings.DEFAULT_FROM_EMAIL, [email],fail_silently=False)
