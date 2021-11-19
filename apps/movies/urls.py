from django.urls import path
from .views import movie_list, movie_add, long_running, movie_details

app_name = 'apps.movies'

urlpatterns = [
    path('', movie_list, name='list_movies'),
    path(r'<int:id>/', movie_details, name='movie_details'),
    path(r'add/', movie_add, name='movie_add'),
    path('long_running/', long_running, name='long_running'),
]
