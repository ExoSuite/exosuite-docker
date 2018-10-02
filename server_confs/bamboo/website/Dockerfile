FROM nginx:stable-alpine

ARG API_FPM_SERVER
ARG API_ROOT_PATH
ARG API_SERVER_NAME

ARG WEBSITE_FPM_SERVER
ARG WEBSITE_ROOT_PATH
ARG WEBSITE_SERVER_NAME

ENV API_FPM_SERVER $API_FPM_SERVER
ENV API_ROOT_PATH $API_ROOT_PATH
ENV API_SERVER_NAME $API_SERVER_NAME

ENV WEBSITE_SERVER_NAME $WEBSITE_SERVER_NAME
ENV WEBSITE_ROOT_PATH $WEBSITE_ROOT_PATH
ENV WEBSITE_FPM_SERVER $WEBSITE_FPM_SERVER

RUN apk add gettext

COPY api.exosuite.conf /etc/nginx/conf.d/api.template
COPY exosuite.conf /etc/nginx/conf.d/website.template

ADD ../snippets /etc/nginx/snippets

RUN envsubst \$API_FPM_SERVER,\$API_SERVER_NAME,\$API_ROOT_PATH < /etc/nginx/conf.d/website.template > /etc/nginx/conf.d/default.conf

RUN envsubst \$WEBSITE_SERVER_NAME,\$WEBSITE_ROOT_PATH,\$WEBSITE_FPM_SERVER < /etc/nginx/conf.d/api.template > /etc/nginx/conf.d/api.conf

RUN rm /etc/nginx/conf.d/api.template
RUN rm /etc/nginx/conf.d/website.template