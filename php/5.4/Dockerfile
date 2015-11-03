
FROM php:5.4-fpm

MAINTAINER Volkov Vyacheslav <volkov.slava31@gmail.com>

ENV XDEBUG_VERSION 2.3.3

RUN buildDeps=" \
	libbz2-dev \
	zlib1g-dev \
	libmcrypt-dev \
	libpng12-dev \
	libjpeg62-turbo-dev \
	libxpm-dev \
	libfreetype6-dev \
    " \
    && phpModules=" \
        mbstring  \
	mysql \
	mysqli \
	bz2 \
	zip \
	gd \
	mcrypt \
	xdebug \
    " \
    && apt-get update \
    && apt-get install -y libfreetype6 libjpeg62-turbo libmcrypt4 libpng12-0 libxpm4 bzip2 zip --no-install-recommends \
    && ln -s /usr/lib/x86_64-linux-gnu/libXpm.a /usr/lib/libXpm.a \
    && ln -s /usr/lib/x86_64-linux-gnu/libXpm.so /usr/lib/libXpm.so \
    && apt-get install -y $buildDeps --no-install-recommends \
    && cd /usr/src/php/ext/ \
    && curl -L http://xdebug.org/files/xdebug-$XDEBUG_VERSION.tgz | tar -zxf - \
    && mv xdebug-$XDEBUG_VERSION xdebug \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ --with-xpm-dir=/usr/include/ \
    && docker-php-ext-install $phpModules \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false -o APT::AutoRemove::SuggestsImportant=false $buildDeps
    


