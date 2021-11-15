from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib.postgres.fields import ArrayField


class Movie(models.Model):
    imdb_id = models.CharField(_('tconst'), max_length=10, null=True, blank=True)

    class TitleType(models.TextChoices):
        SHORT = 'SH', _('short')
        MOVIE = 'MOV', _('movie')

    title_type = models.CharField(_('titleType'), choices=TitleType.choices, max_length=5, null=True, blank=True)
    name = models.CharField(_('primaryTitle'), max_length=255, null=True, blank=True)
    is_adult = models.BooleanField(_('isAdult'), null=True, blank=True)
    year = models.DateField(_('startYear'), null=True, blank=True)
    genres = ArrayField(models.CharField(_('genres'), max_length=100), null=True, blank=True)


class Person(models.Model):
    imdb_id = models.CharField(_('nconst'), max_length=10, null=True, blank=True)
    name = models.CharField(_('primaryName'), max_length=255, null=True, blank=True)
    birth_year = models.DateField(_('birthYear'), null=True, blank=True)
    death_year = models.DateField(_('deathYear'), null=True, blank=True)


class PersonMovie(models.Model):
    movie_id = models.ForeignKey(Movie, on_delete=models.PROTECT, null=True, blank=True)
    person_id = models.ForeignKey(Person, on_delete=models.PROTECT, null=True, blank=True)
    order = models.IntegerField(_('ordering'), null=True, blank=True)

    class Category(models.TextChoices):
        ACTOR = 'AC-R', _('actor')
        ACTRESS = 'AC-S', _('actress')
        CINEMATOGRAPHER = 'CIN', _('cinematographer')
        COMPOSER = 'COM', _('composer')
        DIRECTOR = 'DIR', _('director')
        EDITOR = 'ED', _('editor')
        PRODUCER = 'PR', _('producer')
        SELF = 'SEL', _('self')
        WRITER = 'WR', _('writer')

    category = models.CharField(_('category'), choices=Category.choices, max_length=100, null=True, blank=True)

    class Job(models.TextChoices):
        CO_DIRECTOR = 'CO-D', _('co-director')
        COMIC_STRIP = 'COM', _('comic strip')
        DIRECTOR_OF_PHOTO = 'DIR-P', _('director of photography')
        NOVEL = 'NOV', _('novel')
        PLAY = 'PL', _('play')
        POEM = 'PO', _('poem')
        PRODUCER = 'PR', _('producer')
        SCENARIO = 'SC', _('scenario')
        SCREEN_PLAY = 'SC-P', _('screen play')
        STORY = 'ST', _('story')
        WRITER = 'WR', _('writer')

    job = models.CharField(_('job'), choices=Job.choices, max_length=100, null=True, blank=True)
    characters = ArrayField(models.CharField(_('characters'), max_length=255), null=True, blank=True)