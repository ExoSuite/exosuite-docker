FROM nginx:stable-alpine

ARG CONFIG_FILE
ARG FPM_SERVER
ARG ROOT_PATH
ARG SERVER_NAME

ENV FPM_SERVER $FPM_SERVER
ENV ROOT_PATH $ROOT_PATH
ENV SERVER_NAME $SERVER_NAME

COPY ${CONFIG_FILE} /etc/nginx/conf.d/default.template

ADD snippets /etc/nginx/snippets

RUN envsubst \$FPM_SERVER,\$SERVER_NAME,\$ROOT_PATH < /etc/nginx/conf.d/default.template > /etc/nginx/conf.d/default.conf

RUN rm /etc/nginx/conf.d/default.template