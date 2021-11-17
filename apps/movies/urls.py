from django.urls import path
from .views import list_movies, long_running

app_name = 'apps.movies'

urlpatterns = [
    path('', list_movies, name='list_movies'),
    path('long_running/', long_running, name='long_running'),
]
