from django.urls import path
from .views import *

app_name = 'apps.authentication'

urlpatterns = [
    path('', my_view, name='home'),
    path('list/', list_users, name='list-users'),
    path('registr/', RegisterViev.as_view(), name='register-users')
]
