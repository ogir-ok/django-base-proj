from django.shortcuts import render, get_object_or_404
from apps.movies.models import Movie


def list_movies(request):
    movies = Movie.objects.order_by('imdb_id')
    return render(request, 'movies/movies_list.html', context={'movies': movies})


def movie_detail(request, pk):
    movie = get_object_or_404(Movie, pk=pk)
    if movie.year is None:
        year = 'unknown'
    else:
        year = str(movie.year)
    person_in_movies = movie.personmovie_set.all()
    actor = []
    for person in person_in_movies:
        if person.category in ['actor', 'actress'] and person.person_id.name is not None:
            actor.append(person.person_id.name)
    if len(actor) == 0:
        actor.append('unknown')
    return render(request, 'movies/movie_detail.html',
                  context={'movie': movie, 'year': year, 'person_movies': person_in_movies, 'actors': actor})