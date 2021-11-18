from django.db import models
from django.utils.translation import ugettext_lazy as _

# importing an arrayField :
from django.contrib.postgres.fields import ArrayField


class Director(models.Model):
    name = models.CharField(_('Name'), max_length=100)
    birth_date = models.DateField(_('Birth date'))

    def __str__(self):
        return self.name


# title.basic.tsv file
class Movie(models.Model):
    class TitleType(models.TextChoices):
        SHORT = 'short', _('Short')
        MOVIE = 'movie', _('Movie')

    # The Max Count Of Movies = 30.
    imdb_id = models.CharField(_('imdb_id'), unique=True, max_length=255, null=True)

    # Title Type With Choices Of Short Movies Inside A List.
    title_type = models.CharField(_('Title_type'), max_length=80, choices=TitleType.choices, default=TitleType.SHORT)

    # Primary Title Of Random Movie From The List.

    name = models.CharField(_('Name'), max_length=255)

    # BooleanField IsAdult.
    is_adult = models.BooleanField(_('IsAdult'), default=False)

    # Year Of The Movie.
    year = models.DateField(_('Release Year'), null=True)

    # 1- Genres As Array Field By Module ArrayField .
    # 2- Genres As Json Field By Installing jsonfield --> <pip install jsonfield> .

    genres = ArrayField(models.CharField(max_length=255, default=list))
    # genres = JSONField() --> But For Easley We Can Use What Was Written Above :)

    director = models.ForeignKey(Director, on_delete=models.PROTECT)


# file name.basic.tsv
class Person(models.Model):
    # Creating an Id Variable Which Will Hold <nconst>
    imdb_id = models.CharField(_('nconst'), max_length=30)

    # CharField of The Person Name.
    name = models.CharField(_('primaryName'), max_length=100)

    # DateField of The Person Birth Year.
    birth_year = models.DateField('birthYear')

    # DateField Of The person Death Year.
    death_year = models.DateField('deathYear')


# file title.principals.tsv
class PersonMovie(models.Model):
    # Creating Movie_Id Variable Which Will Hold <tconst> From The Movie Class.
    Movie_id = models.ForeignKey(Movie, on_delete=models.PROTECT)

    # Creating Person_Id Variable Which Will Hold <nconst> From The Person Class.
    person_id = models.ForeignKey(Person, on_delete=models.PROTECT)

    # Creating an Order Variable Which Will Make a Sorting Order.
    order = models.IntegerField('Ordering')

    # Creating a Category List Which Holding The Categories Of The Movies.
    category_list = [(1, 'Action'), (2, 'Horror'), (3, 'Comedy'), (4, 'Mystery')]
    category = models.CharField(_('Category'), choices=category_list, max_length=30)

    # Creating a Job List Which Holding The Movie Workers.
    job_list = [(1, 'Director'), (2, 'Microphone Holder'), (3, 'Actor'), (4, 'Photographer')]
    job = models.CharField(_('Category'), choices=job_list, max_length=30)

    # Creating a Characters Variable as An Array.
    characters = ArrayField(ArrayField(models.CharField('Characters', max_length=255)))
