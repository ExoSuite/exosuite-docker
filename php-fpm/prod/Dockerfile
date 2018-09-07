FROM php:7.2-fpm

ENV DEBIAN_FRONTEND noninteractive
ENV COMPOSER_ALLOW_SUPERUSER=1

RUN apt-get update && apt-get install -y libpq-dev curl && docker-php-ext-install -j$(nproc) pdo_pgsql

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

COPY "./${INSTALL_PATH}" "/${INSTALL_PATH}"

CMD ["php-fpm"]