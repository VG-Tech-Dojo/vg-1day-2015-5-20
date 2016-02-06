PHP?=$(shell which php)
SERVER_HOST?=localhost
SERVER_PORT?=8888

all:

install-vendors:
	$(PHP) -r "eval('?>'.file_get_contents('https://getcomposer.org/installer'));"
	$(PHP) composer.phar install

install:
	cp ./db/api.base.db ./db/api.db

server:
	$(PHP) -S $(SERVER_HOST):$(SERVER_PORT) -t web

test:
	$(PHP) ./vendor/bin/phpunit
