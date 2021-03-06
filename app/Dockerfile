FROM python:3.8.5-alpine

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip

COPY Pipfile .

COPY Pipfile.lock .

RUN pip install pipenv

RUN pipenv install

COPY ./entrypoint.sh .

COPY . .

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh"]

