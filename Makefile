.DEFAULT_GOAL := prod

install:
	 curl -sS https://get.symfony.com/cli/installer | bash

configure:
	composer install
	symfony server:ca:install

prod:
	symfony server:start
