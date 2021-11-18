from django.db import models
from django.utils.translation import ugettext_lazy as _
from django.contrib.postgres.fields import ArrayField


class Movie(models.Model):
    class TitleType(models.TextChoices):
        SHORT = 'SH', _('short')
        MOVIE = 'MOV', _('movie')

    imdb_id = models.CharField(_('imdb id'), unique=True, max_length=255, null=True)
    name = models.CharField(_('Name'), max_length=255)
    title_type = models.CharField(_('Title_Type'), choices=TitleType.choices, default=TitleType.SHORT, max_length=80,
                                  null=True)
    is_adult = models.BooleanField(_('Is Adult rated'), default=False)
    year = models.DateField(_('Release year'), null=True)
    genres = ArrayField(models.CharField(max_length=100), default=list)


class Person(models.Model):
    imdb_id = models.CharField(_('nconst'), max_length=10, null=True)
    name = models.CharField(_('primaryName'), max_length=255, null=True)
    birth_year = models.DateField(_('birthYear'), null=True)
    death_year = models.DateField(_('deathYear'), null=True)


class PersonMovie(models.Model):
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

    movie_id = models.ForeignKey(Movie, on_delete=models.PROTECT, null=True)
    person_id = models.ForeignKey(Person, on_delete=models.PROTECT, null=True)
    order = models.IntegerField(_('ordering'), null=True)
    category = models.CharField(_('category'), choices=Category.choices, max_length=100, null=True)
    job = models.CharField(_('job'), choices=Job.choices, max_length=100, null=True)
    characters = ArrayField(models.CharField(_('characters'), max_length=255), null=True)
