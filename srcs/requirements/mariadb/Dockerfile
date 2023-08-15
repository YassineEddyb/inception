FROM alpine:3.16
ARG DB_NAME DB_USER DB_PASS DB_ROOTPASS

RUN apk update && apk add --no-cache mariadb mariadb-client

COPY tools/script.sh /tmp/script.sh

RUN mkdir /var/run/mysqld && chmod 777 /var/run/mysqld && \
    sed -i "s/skip-networking/skip-networking=0/g" /etc/my.cnf.d/mariadb-server.cnf && \
    chmod +x /tmp/script.sh

RUN mysql_install_db --user=mysql --datadir=/var/lib/mysql

USER mysql
ENTRYPOINT [ "sh", "/tmp/script.sh" ]