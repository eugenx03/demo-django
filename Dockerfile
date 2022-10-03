FROM python:3

RUN mkdir /code
WORKDIR /code
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# EXPOSE 8000
# CMD python manage.py runserver 0.0.0.0:8000
# CMD gunicorn microservice_sample_app.wsgi:application --bind 0.0.0.0:${APP_PORT}" 