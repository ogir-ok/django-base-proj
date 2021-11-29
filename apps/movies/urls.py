from django.urls import path
from .views import movie_list, long_running, movie_details, movie_add, person_add, rating

app_name = 'apps.movies'

urlpatterns = [
    path('', movie_list, name='movie_list'),
    path(r'<int:id>/', movie_details, name='movie_details'),
    path(r'add/movie/', movie_add, name='movie_add'),
    path(r'add/person/', person_add, name='person_add'),
    path('rating/', rating, name='rating'),
    path('long_running/', long_running, name='long_running'),
]
