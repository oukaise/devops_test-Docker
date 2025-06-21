FROM php:8.2-fpm

RUN apt update && apt install -y libpq-dev unzip curl
RUN docker-php-ext-install pdo pdo_pgsql
RUN pecl install redis && docker-php-ext-enable redis
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

WORKDIR /var/www/html
COPY . .
