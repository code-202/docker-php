FROM code202/php:8.3.36

LABEL org.opencontainers.image.authors="jn.germon@code202.fr"

RUN apk add --no-cache\
    php83-fpm 

COPY php-fpm.conf /etc/php83/php-fpm.d/www.conf
COPY docker.conf /etc/php83/php-fpm.d/docker.conf
COPY php-fpm.ini /etc/php83/conf.d/50-setting.ini

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm83"]
