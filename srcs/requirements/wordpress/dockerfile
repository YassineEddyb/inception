FROM alpine:3.16
ARG DB_NAME DB_USER DB_PASS DB_HOST

RUN apk update && apk upgrade && apk add --no-cache \
    php8 php8-fpm php8-mysqli php8-mbstring php8-phar curl && \
    sed -i 's/127.0.0.1:9000/9000/g' /etc/php8/php-fpm.d/www.conf

WORKDIR /var/www/html

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

COPY tools/create.sh /tmp/create.sh

ENTRYPOINT [ "sh", "/tmp/create.sh" ]