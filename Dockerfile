FROM python:3.8.3-alpine

WORKDIR /app

ENV PYTHONDONTWRITEBYTECODE 1

ENV PYTHONUNBUFFERED 1

RUN pip install pipenv


COPY . /app

RUN pipenv install


EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"] 