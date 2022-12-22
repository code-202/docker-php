FROM code202/php:8.1

MAINTAINER jn.germon@code202.fr

RUN apk update && \
    apk add \
        php81-fpm \
    && rm -rf /var/cache/apk/*

ADD php-fpm.conf /etc/php81/php-fpm.d/www.conf
ADD docker.conf /etc/php81/php-fpm.d/docker.conf

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

EXPOSE 9000

ENTRYPOINT ["/entrypoint.sh"]

CMD ["php-fpm81"]
