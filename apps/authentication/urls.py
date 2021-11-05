from django.urls import path
from .views import my_view

app_name = 'apps.authentication'

urlpatterns = [
    path('', my_view, name='home')
]
