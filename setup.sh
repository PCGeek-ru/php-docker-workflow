#!/bin/bash
#install composer as global
cp environment/php/composer/composer /usr/local/bin/composer
chmod +x /usr/local/bin/composer

composer self-update --update-keys
