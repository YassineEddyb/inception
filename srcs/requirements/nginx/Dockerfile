

FROM alpine:3.18

RUN apk update && apk add nginx openssl

RUN mkdir /etc/nginx/ssl

RUN openssl req -x509 -nodes -out /etc/nginx/ssl/inception.crt -keyout /etc/nginx/ssl/inception.key \
      -subj "/C=MA/ST=BG/L=BENGUERIR/O=1337/OU=1337/CN=yed-dyb.42.fr/UID=yed-dyb"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]


# RUN	apk update && apk upgrade && apk add --no-cache nginx && apk add openssl

# WORKDIR /etc/nginx

# RUN mkdir ssl

# RUN openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
# 	-out ssl/oouazize.42.fr.crt \
# 	-keyout ssl/oouazize.42.fr.key \
# 	-subj "/C=MA/ST=oouazize/L=oouazize/O=42 School/OU=oouazize.42.fr/CN=oouazize.42.fr/"
# COPY ./conf/nginx.conf ./nginx.conf

# CMD ["nginx", "-g", "daemon off;"]