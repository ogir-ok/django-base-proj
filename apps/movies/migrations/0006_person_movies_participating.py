# Generated by Django 3.2.8 on 2021-11-29 16:48

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0005_auto_20211122_1652'),
    ]

    operations = [
        migrations.AddField(
            model_name='person',
            name='movies_participating',
            field=models.ManyToManyField(through='movies.PersonMovie', to='movies.Movie'),
        ),
    ]