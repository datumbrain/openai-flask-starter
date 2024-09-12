FROM python:3.12.6-slim-bullseye as builder

WORKDIR /app

RUN pip install --no-cache-dir pipenv

COPY . .

RUN pipenv install --deploy --ignore-pipfile

EXPOSE 5000
ENTRYPOINT ["pipenv", "run", "gunicorn", "-w", "4", "main:app", "--bind", "0.0.0.0:5000"]
