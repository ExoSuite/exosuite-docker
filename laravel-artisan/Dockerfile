FROM php:7.3-rc-alpine

ARG COMMAND
ARG WORKDIR
ENV COMMAND $COMMAND
ENV WORKDIR $WORKDIR

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev autoconf g++ make

COPY ./docker-php-entrypoint.sh /usr/bin/docker-php-entrypoint.sh

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

RUN docker-php-ext-install -j$(nproc) pdo_pgsql pcntl posix bcmath

RUN chmod 755 /usr/bin/docker-php-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-php-entrypoint.sh"]

CMD ["sh", "-c", "php $WORKDIR/artisan $COMMAND"]