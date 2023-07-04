
FROM alpine:3.18

RUN apk add nginx
RUN apk add openssl
RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
      -subj "/C=MA/ST=BG/L=BENGUERIR/O=1337/OU=1337/CN=yed-dyb.42.fr/UID=yed-dyb"

# RUN mkdir -p /var/run/nginx
COPY conf/nginx.conf /etc/nginx/nginx.conf

# RUN chmod 755 /var/www/html
# RUN chown -R www-data:www-data /var/www/html

CMD ["nginx", "-g", "daemon off;"]
