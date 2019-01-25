FROM php:7.3.1-cli-alpine

ARG COMMAND
ARG WORKDIR
ENV COMMAND $COMMAND
ENV WORKDIR $WORKDIR

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev autoconf g++ make libpng-dev freetype-dev libjpeg-turbo-dev libpng libjpeg-turbo freetype

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

RUN docker-php-ext-configure gd \
        --with-gd \
        --with-freetype-dir=/usr/include/ \
        --with-png-dir=/usr/include/ \
        --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) pdo_pgsql pcntl posix bcmath gd exif

CMD ["sh", "-c", "php $WORKDIR/artisan $COMMAND"]