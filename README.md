
# Recipe App API
This project is part of the following Udemy course along with some modifications due to new releases and deprecations.
Udemy course: Build a [Backend REST API with Python & Django - Advanced](http://londonapp.dev/django-python-advanced).

The course teaches how to build a fully functioning REST API using:

 - Python
 - Django / Django-REST-Framework
 - Docker / Docker-Compose
 - Test Driven Development

## Getting started

- To start project, run:

```
docker compose up
```

    - The API will then be available at [http://127.0.0.1:8000](http://127.0.0.1:8000).
    - You can see all the endpoints at [http://127.0.0.1:8000/api/docs/](http://127.0.0.1:8000/api/docs/)
    - To authenticate on the API browser, use: `Token <token>`


- Fix and lint the project using flake8

```
docker compose run --rm app sh -c "flake8"
```


- If you want to run the tests

```
docker compose run --rm app sh -c "python manage.py test"
```


- During development run the following commands to create new directory and apply the migrations every time a model is inserted or updated

```
docker compose run --rm app sh -c "django-admin startproject app ."
docker compose run --rm app sh -c "python manage.py makemigrations"
docker compose run --rm app sh -c "python manage.py wait_for_db && python manage.py migrate"
```


- To create a superuser through terminal

```
docker compose run --rm app sh -c "python manage.py createsuperuser"
```
