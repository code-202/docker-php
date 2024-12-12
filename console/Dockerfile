FROM code202/php:8.4

LABEL org.opencontainers.image.authors="jn.germon@code202.fr"

RUN apk update && \
    apk add \
        composer \
        curl \
        git \
        make \
        openssh \
        zsh \
    && rm -rf /var/cache/apk/*

# Use PHP84
RUN rm /usr/bin/php && ln -s /usr/bin/php84 /usr/bin/php

# Install composer
RUN /usr/bin/php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
    /usr/bin/php -r "if (hash_file('sha384', 'composer-setup.php') === 'dac665fdc30fdd8ec78b38b9800061b4150413ff2e3b6f88543c636f7cd84f6db9189d43a81e5503cda447da73c7e5b6') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;" && \
    /usr/bin/php composer-setup.php --2.2 && \
    /usr/bin/php -r "unlink('composer-setup.php');" && \
    mv composer.phar /usr/local/bin/composer

ENV CONTAINER_SHELL=/bin/bash

VOLUME /home/developer

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/entrypoint.sh"]
