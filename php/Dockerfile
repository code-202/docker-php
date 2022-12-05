FROM alpine:3.16

MAINTAINER jn.germon@code202.fr

RUN apk update && \
    apk add \
        bash \
        php81 \
        php81-bcmath \
        php81-dom \
        php81-ctype \
        php81-curl \
        php81-fileinfo \
        php81-gd \
        php81-iconv \
        php81-intl \
        php81-json \
        php81-mbstring \
        php81-opcache \
        php81-openssl \
        php81-pdo \
        php81-pdo_pgsql \
        php81-phar \
        php81-posix \
        php81-simplexml \
        php81-session \
        php81-soap \
        php81-tokenizer \
        php81-xml \
        php81-xmlreader \
        php81-xmlwriter \
        php81-zip \
    && rm -rf /var/cache/apk/*

CMD ["tail", "-f", "/srv/README.md"]
