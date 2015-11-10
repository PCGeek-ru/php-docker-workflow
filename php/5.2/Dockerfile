
FROM php:5.2-fpm

MAINTAINER Volkov Vyacheslav <volkov.slava31@gmail.com>

ENV XDEBUG_VERSION 2.2.7

RUN buildDeps=" \
	libbz2-dev \
	zlib1g-dev \
	libmcrypt-dev \
	libpng12-dev \
	libjpeg62-dev \
	libxpm-dev \
	libfreetype6-dev \
    " \
    && phpModules=" \
        mbstring  \
	mysql \
	mysqli \
	pdo \
	pdo_mysql \
	bz2 \
	zip \
	gd \
	mcrypt \
	xdebug \
    " \
     && echo "deb http://httpredir.debian.org/debian wheezy contrib non-free" > /etc/apt/sources.list.d/additional.list \
    && apt-get update && apt-get install -y libmcrypt4 --no-install-recommends \
    && apt-get install -y $buildDeps --no-install-recommends \
    && cd /usr/src/php/ext/ \
    && curl -L http://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz | tar -zxf - \
    && mv xdebug-$XDEBUG_VERSION xdebug \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-xpm-dir=/usr/include/ \
    && docker-php-ext-install $phpModules \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps
    


