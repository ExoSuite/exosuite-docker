FROM pagespeed/nginx-pagespeed:stable-alpine3.8-ngx1.15

COPY exosuite.conf /etc/nginx/conf.d/default.conf
COPY api.exosuite.conf /etc/nginx/conf.d/api.conf
COPY pagespeed.conf /etc/nginx

ADD snippets /etc/nginx/snippets