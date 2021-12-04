# Generated by Django 3.2.8 on 2021-12-01 13:58

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('movies', '0004_auto_20211112_1734'),
    ]

    operations = [
        migrations.AlterModelOptions(
            name='personmovie',
            options={'ordering': ['order']},
        ),
        migrations.AddField(
            model_name='movie',
            name='persons_participating',
            field=models.ManyToManyField(through='movies.PersonMovie', to='movies.Person'),
        ),
        migrations.AlterField(
            model_name='person',
            name='birth_year',
            field=models.DateField(null=True, verbose_name='birthYear'),
        ),
        migrations.AlterField(
            model_name='person',
            name='name',
            field=models.CharField(max_length=255, null=True, verbose_name='primaryName'),
        ),
        migrations.AlterField(
            model_name='personmovie',
            name='category',
            field=models.CharField(blank=True, max_length=100, null=True, verbose_name='category'),
        ),
        migrations.AlterField(
            model_name='personmovie',
            name='job',
            field=models.CharField(blank=True, max_length=100, null=True, verbose_name='job'),
        ),
        migrations.AlterField(
            model_name='personmovie',
            name='movie',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='persons', to='movies.movie'),
        ),
        migrations.AlterField(
            model_name='personmovie',
            name='person',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.PROTECT, related_name='movies', to='movies.person'),
        ),
    ]