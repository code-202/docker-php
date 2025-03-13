VERSION=8.4.1

build:
	docker build -t code202/php:$(VERSION) php

build-console:
	docker build -t code202/php-console:$(VERSION) console

build-fpm:
	docker build -t code202/php-fpm:$(VERSION) fpm
