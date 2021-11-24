from django.urls import path
from .views import list_movies, movie_add, long_running, movie_details, person_add, movie_and_person_rank

app_name = 'apps.movies'

urlpatterns = [
    path('', list_movies, name='list_movies'),
    path(r'<int:id>/', movie_details, name='movie_details'),
    path(r'add/movies', movie_add, name='movie_add'),
    path(r'add/person', person_add, name='person_add'),
    path('long_running/', long_running, name='long_running'),
    path('rank/', movie_and_person_rank, name='movie_and_person_rank')
]
