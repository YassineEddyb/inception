FROM debian:buster

ARG DB_NAME DB_USER DB_PASS DB_ROOTPASS

RUN apt-get update -y && apt-get install mariadb-server -y

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./tools/script.sh /tmp/script.sh

ENTRYPOINT [ "sh", "/tmp/script.sh" ]