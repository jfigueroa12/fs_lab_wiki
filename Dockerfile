FROM php:7.3.5-apache
RUN apt-get -y update && apt-get -y install vim
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
RUN curl -o dokuwiki.tgz \
https://download.dokuwiki.org/out/dokuwiki-de06047915ab0d0e8c04d093b4e15099.tgz \
    && tar -zxvf dokuwiki.tgz && rm -rf dokuwiki.tgz
RUN chown -vR www-data /var/www/html/dokuwiki
