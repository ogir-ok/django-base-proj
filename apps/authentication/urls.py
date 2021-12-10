from django.urls import path
from .views import *

from rest_framework.authtoken import views

app_name = 'apps.authentication'

urlpatterns = [
    path('', my_view, name='home'),
    path('list/', list_users, name='list-users'),
    path('registr/', RegisterViev.as_view(), name='register-users'),
    path('login/', LoginView.as_view(), name='login-users'),
    path('activate/<uidb64>/<token>', VerificationView.as_view(), name='activate'),
    path('api-token-auth/', views.obtain_auth_token)

]
