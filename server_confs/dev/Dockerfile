FROM nginx:stable-alpine

COPY exosuite.conf /etc/nginx/conf.d/default.conf
COPY api.exosuite.conf /etc/nginx/conf.d/api.conf

ADD snippets /etc/nginx/snippets