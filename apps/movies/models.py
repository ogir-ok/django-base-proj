from django.contrib.postgres.fields import ArrayField
from django.db import models
from django.utils.translation import ugettext_lazy as _


class Movie(models.Model):
    class TitleType(models.TextChoices):
        SHORT = 'short', _('Short')
        MOVIE = 'movie', _('Movie')

    imdb_id = models.CharField(_('imdb id'), unique=True, max_length=255, null=True)
    name = models.CharField(_('Name'), max_length=255)
    title_type = models.CharField(_('Title_type'), max_length=80, choices=TitleType.choices, default=TitleType.SHORT)
    is_adult = models.BooleanField(_('Is adult rated'), default=False)
    year = models.DateField(_('Release year'), null=True)
    genres = ArrayField(models.CharField(max_length=80), default=list)
    persons_participating = models.ManyToManyField('movies.Person', through='PersonMovie')

    @property
    def director(self):
        director = self.persons.filter(category='director').first()
        if director:
            return director.person
        else:
            return 'N/A'

    def __str__(self):
        return f'{self.name}'


class Person(models.Model):
    imdb_id = models.CharField(_('nconst'), max_length=10, null=True, blank=True)
    name = models.CharField(_('primaryName'), max_length=255, null=True, blank=True)
    birth_year = models.DateField(_('birthYear'), null=True, blank=True)
    death_year = models.DateField(_('deathYear'), null=True, blank=True)


    def __str__(self):
        return f'{self.name}'


class PersonMovie(models.Model):
    class Meta:
        ordering = ['order']

    movie = models.ForeignKey(Movie, on_delete=models.PROTECT, null=True, blank=True, related_name='persons')
    person = models.ForeignKey(Person, on_delete=models.PROTECT, null=True, blank=True, related_name='movies')
    order = models.IntegerField(_('ordering'), null=True, blank=True)
    category = models.CharField(_('category'), max_length=100, null=True, blank=True)
    job = models.CharField(_('job'), max_length=100, null=True, blank=True)
    characters = ArrayField(models.CharField(_('characters'), max_length=255), null=True, blank=True)