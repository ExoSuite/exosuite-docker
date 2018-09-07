FROM nginx:stable-alpine

ARG ENVIRONMENT
ARG HOSTNAME

COPY exosuite.${ENVIRONMENT}.conf /etc/nginx/conf.d/default.conf
COPY api.exosuite.${ENVIRONMENT}.conf /etc/nginx/conf.d/api.conf