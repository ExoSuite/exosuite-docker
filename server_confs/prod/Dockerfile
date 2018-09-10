FROM nginx:stable-alpine

ARG CONFIG_FILE

COPY ${CONFIG_FILE} /etc/nginx/conf.d/default.conf



RUN envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf