#!/bin/bash
#install composer as global
cp environment/php/composer/composer /usr/local/bin/composer
chmod +x /usr/local/bin/composer

composer self-update --update-keys

composer create-project phpmyadmin/phpmyadmin --repository https://www.phpmyadmin.net --no-dev domains/sites/html/www/phpmyadmin