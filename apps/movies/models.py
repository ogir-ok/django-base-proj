from django.db import models
from django.utils.translation import ugettext_lazy as _


class Director(models.Model):
    name = models.CharField(_('Name'), max_length=255)
    birth_date = models.DateField(_('Birth date'))

    def __str__(self):
        return self.name


class Movie(models.Model):
    name = models.CharField(_('Name'), max_length=255)
    release_date = models.DateField(_('Release date'))
    director = models.ForeignKey(Director, on_delete=models.PROTECT)