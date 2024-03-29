# Generated by Django 4.0.3 on 2022-04-11 20:12

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('books', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Genre',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=128)),
            ],
        ),
        migrations.CreateModel(
            name='Language',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('language', models.CharField(max_length=128)),
            ],
        ),
        migrations.CreateModel(
            name='BooksLanguages',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('book', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='BooksWithLanguages', to='books.book')),
                ('language', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='LanguagesWithBooks', to='books.language')),
            ],
        ),
        migrations.CreateModel(
            name='BooksGenres',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('book', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='BookWithGenres', to='books.book')),
                ('genre', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='GenresWithBooks', to='books.genre')),
            ],
        ),
        migrations.AddField(
            model_name='book',
            name='genres',
            field=models.ManyToManyField(through='books.BooksGenres', to='books.genre'),
        ),
        migrations.AddField(
            model_name='book',
            name='languages',
            field=models.ManyToManyField(through='books.BooksLanguages', to='books.language'),
        ),
    ]
