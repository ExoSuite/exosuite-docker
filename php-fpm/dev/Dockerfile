FROM php:7.2-fpm

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y libpq-dev curl && docker-php-ext-install -j$(nproc) pdo_pgsql