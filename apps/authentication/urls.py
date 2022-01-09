from django.urls import path
from .views import my_view, list_users, RegisterView

app_name = 'apps.authentication'

urlpatterns = [
    path('', my_view, name='home'),
    path('list/', list_users, name='list-users'),
    path('register/', RegisterView.as_view(), name='register')
]
