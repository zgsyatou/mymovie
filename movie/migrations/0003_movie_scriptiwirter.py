# Generated by Django 2.2 on 2020-04-01 05:57

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('movie', '0002_movie_movie_img'),
    ]

    operations = [
        migrations.AddField(
            model_name='movie',
            name='scriptiwirter',
            field=models.CharField(default=0, max_length=100, verbose_name='编剧'),
        ),
    ]
