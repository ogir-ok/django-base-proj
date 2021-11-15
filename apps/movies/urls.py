from django.urls import path
from .views import list_movies, movie_detail

app_name = 'apps.movies'

urlpatterns = [
    path('', list_movies, name='list_movies'),
    path('movie/<int:pk>/', movie_detail, name='movie_detail'),
]
