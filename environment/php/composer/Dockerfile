FROM pcgeek/php-fpm:7

MAINTAINER Volkov Vyacheslav <volkov.slava31@gmail.com>

ENV COMPOSER_HOME /root/composer

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Display version information
RUN composer --version

# Set up the command arguments
CMD ["-"]
ENTRYPOINT ["composer", "--ansi"]