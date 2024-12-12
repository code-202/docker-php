FROM alpine:3.21

LABEL org.opencontainers.image.authors="jn.germon@code202.fr"

RUN apk update && \
    apk add \
        bash \
        php84 \
        php84-bcmath \
        php84-dom \
        php84-ctype \
        php84-curl \
        php84-fileinfo \
        php84-gd \
        php84-iconv \
        php84-intl \
        php84-json \
        php84-mbstring \
        php84-opcache \
        php84-openssl \
        php84-pdo \
        php84-pdo_pgsql \
        php84-phar \
        php84-posix \
        php84-simplexml \
        php84-session \
        php84-soap \
        php84-sodium \
        php84-tokenizer \
        php84-xml \
        php84-xmlreader \
        php84-xmlwriter \
        php84-zip \
    && rm -rf /var/cache/apk/*

CMD ["tail", "-f", "/srv/README.md"]
