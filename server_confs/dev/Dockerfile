FROM crunchgeek/nginx-pagespeed

ENV NGINX_PAGESPEED=on
ENV NGINX_PAGESPEED_IMG=on
ENV NGINX_PAGESPEED_JS=on
ENV NGINX_PAGESPEED_CSS=on
ENV NGINX_FASTCGI_GEOIP=on

COPY exosuite.conf /etc/nginx/conf.d/default.conf
COPY api.exosuite.conf /etc/nginx/conf.d/api.conf

ADD snippets /etc/nginx/snippets