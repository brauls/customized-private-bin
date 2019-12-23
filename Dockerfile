FROM privatebin/nginx-fpm-alpine:1.3.1

ARG CERT_PATH
ARG PRIV_KEY_PATH
ARG FULLCHAIN_PATH

COPY conf.php /srv/cfg/conf.php
COPY nginx.conf /etc/nginx/conf.d/nginx.conf

VOLUME ${CERT_PATH} /etc/nginx/certs/cert.pem
VOLUME ${PRIV_KEY_PATH} /etc/nginx/certs/privkey.pem
VOLUME ${FULLCHAIN_PATH} /etc/nginx/certs/fullchain.pem

EXPOSE 80 443

ENTRYPOINT ["/init"]