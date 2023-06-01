FROM php:7.4-apache

#Partie b2b
COPY src/index.php /var/www/html/index.php
COPY /apache/b2b.conf /etc/apache2/sites-available/b2b.conf

#Partie www
COPY src/index.html /var/www/html/www/index.html
COPY /apache/www.conf /etc/apache2/sites-available/www.conf

RUN apt update && docker-php-ext-install mysqli && docker-php-ext-enable mysqli

RUN a2ensite b2b.conf
RUN a2ensite www.conf

RUN a2dissite 000-default.conf

EXPOSE 80