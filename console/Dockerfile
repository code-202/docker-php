FROM code202/php:8.4.1

LABEL org.opencontainers.image.authors="jn.germon@code202.fr"

RUN apk add --no-cache\
    # composer=2.8.5-r0 \
    curl=8.12.1-r0 \
    git=2.47.2-r0 \
    make=4.4.1-r2 \
    openssh=9.9_p2-r0 \
    zsh=5.9-r4 

# Use PHP84
RUN rm /usr/bin/php && ln -s /usr/bin/php84 /usr/bin/php

ENV CONTAINER_SHELL=/bin/bash

VOLUME /home/developer

COPY entrypoint.sh /

RUN chmod u+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/entrypoint.sh"]
