#!/bin/sh

pipenv run python manage.py makemigrations 

pipenv run python manage.py migrate 

pipenv run python manage.py collectstatic 

pipenv run gunicorn hello.wsgi:application --bind 0.0.0.0:80
