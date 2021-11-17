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


class Person(models.Model):
    imdb_id = models.CharField(_('nconst'), max_length=10, null=True, blank=True)
    name = models.CharField(_('primaryName'), max_length=255, null=True, blank=True)
    birth_year = models.DateField(_('birthYear'), null=True, blank=True)
    death_year = models.DateField(_('deathYear'), null=True, blank=True)


class PersonMovie(models.Model):
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

    movie = models.ForeignKey(Movie, on_delete=models.PROTECT, null=True, blank=True)
    person = models.ForeignKey(Person, on_delete=models.PROTECT, null=True, blank=True)
    order = models.IntegerField(_('ordering'), null=True, blank=True)
    category = models.CharField(_('category'), choices=Category.choices, max_length=100, null=True, blank=True)
    job = models.CharField(_('job'), choices=Job.choices, max_length=100, null=True, blank=True)
    characters = ArrayField(models.CharField(_('characters'), max_length=255), null=True, blank=True)