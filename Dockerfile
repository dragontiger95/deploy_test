FROM python:3.10-slim

EXPOSE 8000

RUN mkdir /app
WORKDIR /app

COPY ./ ./

RUN pip install -r requirements.txt

CMD ["python","deploy_drf/manage.py","runserver", "0.0.0.0:8000"]