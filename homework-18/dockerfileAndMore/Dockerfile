FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y apache2 && \
    apt clean && rm -rf /var/lib/apt/lists/*

RUN echo 'Привет, AWS!' > /var/www/html/index.html

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
