FROM alpine:3.19

MAINTAINER jn.germon@code202.fr

RUN apk update && \
    apk add \
        bash \
        php82 \
        php82-bcmath \
        php82-dom \
        php82-ctype \
        php82-curl \
        php82-fileinfo \
        php82-gd \
        php82-iconv \
        php82-intl \
        php82-json \
        php82-mbstring \
        php82-opcache \
        php82-openssl \
        php82-pdo \
        php82-pdo_pgsql \
        php82-phar \
        php82-posix \
        php82-simplexml \
        php82-session \
        php82-soap \
        php82-sodium \
        php82-tokenizer \
        php82-xml \
        php82-xmlreader \
        php82-xmlwriter \
        php82-zip \
    && rm -rf /var/cache/apk/*

CMD ["tail", "-f", "/srv/README.md"]
