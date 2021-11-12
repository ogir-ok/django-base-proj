from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib.postgres.fields import ArrayField


class Director(models.Model):
    name = models.CharField(_('Name'), max_length=255)
    birth_date = models.DateField(_('Birth date'))

    def __str__(self):
        return self.name


class Movie(models.Model):
    titleType = [

    ]
    name = models.CharField(_('Name'), max_length=255)
    release_date = models.DateField(_('Release date'))
    director = models.ForeignKey(Director, on_delete=models.PROTECT)
    imdb_id = models.CharField('ID', max_length=255)
    title_type = models.CharField(_('titleType'),
                                  max_length=255,
                                  choices=titleType)
    is_adult = models.BooleanField(_('isAdult'), default=False)
    year = models.DateField(_('startYear'))


class Person(models.Model):
    imdb_id = models.CharField('', max_length=255)
    name = models.CharField(_('Name'), max_length=255)
    birth_year = models.DateField(_('birthYear'), max_length=255)
    death_year = models.DateField(_('deathYear'), max_length=255)


class PersonMovie(models.Model):
    Category = [

    ]
    Job = [

    ]
    movie_id = models.ForeignKey(Movie, on_delete=models.PROTECT)
    person_id = models.ForeignKey(Person, on_delete=models.PROTECT)
    order = models.CharField(_('ordering'), max_length=255)
    category = models.CharField(_('category'),
                                max_length=255,
                                choices=Category
                                )
    job = models.CharField(_('job'),
                           max_length=255,
                           choices=Job
                           )
    characters = ArrayField(ArrayField(models.CharField(_('characters'), max_length=255)))
