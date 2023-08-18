FROM debian:buster


RUN apt update && apt install nginx -y \
      && apt install openssl -y

RUN mkdir /etc/nginx/ssl/

RUN mkdir -p /var/www/html

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key -subj "/C=MA/ST=IDF/L=BENGUERIR/O=1337/OU=1337/CN=yed-dyb/UID=yed-dyb"

COPY conf/nginx.conf /etc/nginx/conf.d/nginx.conf

CMD [ "nginx", "-g", "daemon off;" ]