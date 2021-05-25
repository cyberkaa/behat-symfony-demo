.DEFAULT_GOAL := behat

install:
	 curl -sS https://get.symfony.com/cli/installer | bash

configure:
	composer install
	symfony server:ca:install

boot:
	symfony server:start

behat:
	vendor/bin/behat
