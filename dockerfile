FROM python:3.12-slim

RUN apt-get update && apt-get install -y \
    gcc libpq-dev && \
    apt-get clean

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
