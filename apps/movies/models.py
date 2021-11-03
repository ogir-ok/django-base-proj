from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib.postgres.fields import ArrayField


TITLE_TYPE_CHOICE= []

class Person(models.Model):
    imdb_id = models.CharField('',max_length=255)
    name = models.CharField(_('Name'), max_length=255)
    birth_year = models.DateField(_('birthYear'), max_length=255)
    death_year = models.DateField(_('deathYear'), max_length=255)


class Movie(models.Model):
    imdb_id = models.CharField('',max_length=255)
    title_type = models.CharField(_('titleType'), max_length=255, choices=TITLE_TYPE_CHOICE)
    name = models.CharField(_('primaryName'), max_length=255)
    is_adult = models.BooleanField(_('isAdult'), default=False)
    year = models.DateField(_('startYear'))


CATEGORY_CHOICE = []
JOB_CHOICE = []


class PersonMovie(models.Model):
    movie_id = models.ForeignKey(Movie, on_delete=models.PROTECT)
    person_id = models.ForeignKey(Person, on_delete=models.PROTECT)
    order = models.CharField(_('ordering'), max_length=255)
    category = models.CharField(_('category'),max_length=255, choices=CATEGORY_CHOICE)
    job = models.CharField(_('job'),max_length=255, choices=JOB_CHOICE)
    characters = ArrayField(ArrayField(models.CharField(_('characters'), max_length=255)))
