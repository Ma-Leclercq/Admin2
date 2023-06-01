FROM ubuntu/mysql

ENV MYSQL_ROOT_PASSWORD Frimouche

COPY ./db /docker-entrypoint-initdb.d/db.sql

EXPOSE 3306

