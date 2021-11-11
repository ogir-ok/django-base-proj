from django.urls import path
from .views import list_movies

app_name = 'apps.movies'

urlpatterns = [
    path('', list_movies, name='list_movies'),
]
