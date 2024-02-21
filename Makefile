VERSION=8.2

build:
	docker build -t code202/php:$(VERSION) php

build-console:
	docker build -t code202/php-console:$(VERSION) console

build-fpm:
	docker build -t code202/php-fpm:$(VERSION) fpm
