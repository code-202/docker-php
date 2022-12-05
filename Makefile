VERSION=8.1

build:
	docker build -t code-202/php:$(VERSION) php

build-console:
	docker build -t code-202/php-console:$(VERSION) console

build-fpm:
	docker build -t code-202/php-fpm:$(VERSION) fpm
