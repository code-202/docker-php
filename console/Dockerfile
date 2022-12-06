FROM code-202/php:8.1

MAINTAINER jn.germon@code202.fr

RUN apk update && \
    apk add \
        composer \
        curl \
        git \
        make \
        openssh \
        zsh \
    && rm -rf /var/cache/apk/*

# Use PHP81
RUN rm /usr/bin/php && ln -s /usr/bin/php81 /usr/bin/php

# Install composer
RUN curl --silent --show-error https://getcomposer.org/installer | php -- --2.2 && \
    mv composer.phar /usr/local/bin/composer

ENV CONTAINER_SHELL /bin/bash

VOLUME /home/developer

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/entrypoint.sh"]
