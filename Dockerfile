FROM privatebin/nginx-fpm-alpine:1.3.1

COPY conf.php /srv/cfg/conf.php

EXPOSE 80 443

ENTRYPOINT ["/init"]