FROM pagespeed/nginx-pagespeed:stable-alpine3.8-ngx1.15

ARG CONFIG_FILE
ARG FPM_SERVER
ARG ROOT_PATH
ARG SERVER_NAME
ARG DB_HOST
ARG APP_NAME
ARG ADMIN_NAME

ENV FPM_SERVER $FPM_SERVER
ENV ROOT_PATH $ROOT_PATH
ENV SERVER_NAME $SERVER_NAME
ENV DB_HOST $DB_HOST
ENV APP_NAME $APP_NAME
ENV ADMIN_NAME $ADMIN_NAME

RUN apk add gettext

COPY ${CONFIG_FILE} /etc/nginx/conf.d/default.template

ADD snippets /etc/nginx/snippets

RUN envsubst \$FPM_SERVER,\$SERVER_NAME,\$ROOT_PATH,\$APP_NAME < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

RUN rm /etc/nginx/conf.d/default.template

COPY ./nginx.conf /etc/nginx

COPY pagespeed.conf /etc/nginx
