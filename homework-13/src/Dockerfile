FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install gunicorn

EXPOSE 8000

CMD ["gunicorn", "-b", "0.0.0.0:8000", "app:app"]