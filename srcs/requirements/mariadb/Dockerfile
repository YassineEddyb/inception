FROM debian:buster

ARG DB_NAME DB_USER DB_PASS DB_ROOTPASS

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./tools/script.sh /tmp/script.sh

ENV MYSQL_HOSTNAME=mariadb
ENV MYSQL_DATABASE=wordpress
ENV MYSQL_USER=yed-dyb
ENV MYSQL_PASSWORD=wppass

ENTRYPOINT [ "sh", "/tmp/script.sh" ]