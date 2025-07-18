FROM python:3.10-slim-bullseye
ARG VERSION
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    postgresql \
    postgresql-contrib \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*
RUN pip install psycopg2-binary boto3
RUN pip install --no-cache mlflow==$VERSION