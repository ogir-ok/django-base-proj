from django.urls import path
from .views import list_movies, long_running, movie_details

app_name = 'apps.movies'

urlpatterns = [
    path('', list_movies, name='list_movies'),
    path(r'<int:id>/', movie_details, name='movie_details'),
    path('long_running/', long_running, name='long_running'),
]
