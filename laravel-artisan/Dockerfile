FROM php:7.2-alpine

ARG COMMAND
ARG WORKDIR
ENV COMMAND $COMMAND
ENV WORKDIR $WORKDIR

RUN set -ex \
  && apk --no-cache add \
    postgresql-dev

COPY ./docker-php-entrypoint.sh /usr/bin/docker-php-entrypoint.sh

RUN docker-php-ext-install -j$(nproc) pdo_pgsql pcntl posix bcmath

RUN chmod 755 /usr/bin/docker-php-entrypoint.sh

ENTRYPOINT ["/usr/bin/docker-php-entrypoint.sh"]

CMD ["sh", "-c", "php $WORKDIR/artisan $COMMAND"]