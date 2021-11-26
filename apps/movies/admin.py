from django.contrib import admin
from apps.movies.models import Movie, Person, PersonMovie


class PersonsInline(admin.TabularInline):
    model = PersonMovie


@admin.register(Movie)
class MovieAdmin(admin.ModelAdmin):
    list_display = ['id', 'name']
    inlines = [PersonsInline]


@admin.register(Person)
class PersonAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'birth_year']
