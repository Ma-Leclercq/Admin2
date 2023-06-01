FROM ubuntu/apache2

RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get -y update && apt-get -y install curl

COPY ./index.html /var/www/html/
COPY ./intranet.conf /etc/apache2/sites-available/000-default.conf

EXPOSE 80