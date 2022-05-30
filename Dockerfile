FROM php:7.3.5-apache
RUN apt-get -y update && apt-get -y install vim
RUN apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install -j$(nproc) gd
#RUN curl -k -o dokuwiki.tgz \
#https://download.dokuwiki.org/src/dokuwiki/dokuwiki-stable.tgz \
#    && tar -zxvf dokuwiki.tgz && rm -rf dokuwiki.tgz
RUN cd /var/www/html/
#RUN chown -vR www-data /var/www/html/dokuwiki
