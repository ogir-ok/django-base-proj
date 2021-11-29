from django.contrib import admin
from apps.movies.models import Movie, Person, PersonMovie


class PersonsInline(admin.TabularInline):
    model = PersonMovie


@admin.register(Movie)
class MovieAdmin(admin.ModelAdmin):
    list_display = ['imdb_id', 'title_type', 'name', 'is_adult', 'year', 'genres']
    inlines = [PersonsInline]


@admin.register(Person)
class PersonAdmin(admin.ModelAdmin):
    list_display = ['imdb_id',  'name', 'birth_year', 'death_year']


@admin.register(PersonMovie)
class PersonMovieAdmin(admin.ModelAdmin):
    list_display = ['movie_id', 'person_id', 'order', 'category', 'job', 'characters']
