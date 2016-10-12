FROM php:7.1-apache
RUN apt-get update && apt-get install -y\
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libmcrypt-dev \
        libpng12-dev \
    && docker-php-ext-install -j$(nproc) mcrypt mbstring pdo\
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
COPY src/ /var/www/html
COPY php.ini /usr/local/etc/php
VOLUME /var/www/html/Sqlites
RUN cd /var/www/html && chown -R www-data:www-data *
