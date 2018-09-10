FROM nginx:stable-alpine

ARG FOLDER_PATH
ARG CONFIG_FILE
ARG ROOT_PATH
ARG SERVER_NAME
ARG FPM_SERVER

ENV FPM_SERVER $FPM_SERVER
ENV SERVER_NAME $SERVER_NAME

COPY ${CONFIG_FILE} /etc/nginx/conf.d/default.conf

COPY ${FOLDER_PATH} "/${ROOT_PATH}"

RUN envsubst < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf