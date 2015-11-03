FROM ubuntu:latest

MAINTAINER Volkov Vyacheslav <volkov.slava31@gmail.com>

RUN apt-get update && sudo apt-get upgrade -y && apt-get install -y apache2 --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html && chown -R www-data:www-data /var/lock/apache2 /var/run/apache2 /var/log/apache2 /var/www/html

RUN a2dismod mpm_event && a2enmod mpm_worker proxy_fcgi rewrite expires headers

RUN rm /etc/apache2/conf-enabled/* /etc/apache2/sites-enabled/*

#WORKDIR /var/www/html
RUN rm -f /var/run/apache2/apache2.pid

EXPOSE 80
CMD apache2 -DFOREGROUND
