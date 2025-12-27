FROM composer:latest

WORKDIR /var/www/html

COPY src .
 
RUN addgroup -g 1000 laravel && adduser -G laravel -g laravel -s /bin/sh -D laravel
 
USER laravel
 

ENTRYPOINT [ "composer", "install", "--ignore-platform-reqs" ]