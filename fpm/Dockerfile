FROM code202/php:8.4.1

LABEL org.opencontainers.image.authors="jn.germon@code202.fr"

RUN apk add --no-cache\
    php84-fpm 

COPY php-fpm.conf /etc/php84/php-fpm.d/www.conf
COPY docker.conf /etc/php84/php-fpm.d/docker.conf

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm84"]
