from django.contrib import admin

from apps.movies.models import Director, Movie


@admin.register(Director)
class DirectorAdmin(admin.ModelAdmin):
    list_display = ['id',  'name']


@admin.register(Movie)
class MovieAdmin(admin.ModelAdmin):
    list_display = ['id', 'name', 'director']