import pytest
from library.books.models import *

# @pytest.mark.django_db
# def test_author_name():
#     author = Author.objects.create(name = 'Paulo', last_name = 'Coelho')
#     print('This is my authors name: ', author.name)
#     assert author.last_name == 'Coelho'
#     # Para concatenar condiciones.
#     assert Author.objects.all().count() == 1
#     # Que en efecto que haya borrado el modelo de nuestra BDD.
#     author.delete()
#     assert Author.objects.all().count() == 0

# Tarea: aserciones.
# Prueba 1
# @pytest.mark.django_db
# def test_author_name_length():
#     author = Author.objects.create(name = 'Hajime', last_name = 'Isayama')
#     print('This is my authors name:', author.name, author.last_name)
#     assert len(author.name) <= 256
#     assert len(author.name) is not 256
#     author.delete()

# ----------------- GENRE

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_genre',
	(
		("Terror"),
		("Fantasy"),
		("Educational"),
	)
)
def test_genre_length(name_genre):
    genre = Genre.objects.create(name = name_genre)
    print('Genre:', genre.name)
    print('Genre < 128:', (len(genre.name) <= 128))
    assert len(genre.name) <= 128
    genre.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_genre',
	(
		("Terror"),
		("Fantasy"),
		("Educational"),
	)
)
def test_genre_not_numeric(name_genre):
    genre = Genre.objects.create(name = name_genre)
    result = genre.name.isnumeric()  
    print('It genre name numeric:', result)
    assert result == False
    genre.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_genre',
	(
		("Terror"),
		("Fantasy"),
		("Educational"),
	)
)
def test_genre_no_longer(name_genre):
    genre = Genre.objects.create(name = name_genre)
    result = (len(genre.name) > 128)
    print('Genre:', genre.name)
    print('Genre > 128:', result)
    assert result == False
    genre.delete()

# ----------------- LANGUAGE

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_language',
	(
		("Japanese"),
		("Chinese"),
		("Spanish"),
	)
)
def test_language_length(name_language):
    language = Language.objects.create(language = name_language)
    print('Language < 128:', (len(language.language) <= 128))
    assert len(language.language) <= 128
    language.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_language',
	(
		("Japanese"),
		("Chinese"),
		("Spanish"),
	)
)
def test_language_not_numeric(name_language):
    language = Language.objects.create(language = name_language)
    result = language.language.isnumeric()  
    print('Language:', language.language)
    print('It language numeric:', result)
    assert result == False
    language.delete()

@pytest.mark.django_db
@pytest.mark.parametrize(
	'name_language',
	(
		("English"),
		("German"),
		("Italian"),
	)
)
def test_language_no_longer(name_language):
    language = Language.objects.create(language = name_language)
    result = (len(language.language) > 128)
    print('Language:', language.language)
    print('Language > 128:', result)
    assert result == False
    language.delete()

# @pytest.mark.django_db
# def test_author_with_monkey(monkeypatch):
# 	autor = Author.objects.create(name='Nombre', last_name='Apellido')
# 	def model_count_mock():
# 		return 4

# 	print(dir(Author.objects))
# 	print(type(Author.objects))
# 	print(type(Author.objects.all()))
# 	monkeypatch.setattr(Author.objects, 'count', model_count_mock)

# 	assert Author.objects.count() == 4
# 	print('Haciendo el monkeypatch')

# @pytest.mark.django_db
# def test_author_with_monkey(monkeypatch):
# 	autor = Author.objects.create(name='Nombre', last_name='Apellido')

# 	class AuthorQuerysetMock():
# 		def __init__(self):
# 			self.some_value = 1

# 		def count(self):
# 			return 4

# 	def model_count_mock():
# 		return AuthorQuerysetMock()

# 	monkeypatch.setattr(Author.objects, 'count', model_count_mock)

# 	assert Author.objects.all().count() == 4
# 	print('Haciendo el monkeypatch')