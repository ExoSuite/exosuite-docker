FROM nginx:stable-alpine

COPY exosuite.conf /etc/nginx/conf.d/default.conf
COPY api.exosuite.conf /etc/nginx/conf.d/api.conf

RUN echo "127.0.01 exosuite.local api.exosuite.local app.exosuite.local admin.exosuite.local"