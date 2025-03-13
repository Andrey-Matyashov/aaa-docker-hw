FROM python:3.8-slim

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

RUN pip install gunicorn

COPY . .

CMD ["gunicorn", "--bind", "0.0.0.0:8080", "server:app"]