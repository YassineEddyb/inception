
FROM alpine:3.18

RUN apk update && apk upgrade
RUN apk add mariadb

COPY conf/50-server.cnf	/etc/mysql/mariadb.conf.d/50-server.cnf