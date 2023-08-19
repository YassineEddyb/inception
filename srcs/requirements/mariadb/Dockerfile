FROM debian:buster

ARG DB_NAME DB_USER DB_PASS DB_ROOTPASS

RUN apt-get update -y && apt-get install mariadb-server -y

COPY ./conf/my.cnf /etc/mysql/my.cnf

COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "sh", "/tmp/script.sh" ]