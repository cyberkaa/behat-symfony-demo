.DEFAULT_GOAL := behat

install:
	 curl -sS https://get.symfony.com/cli/installer | bash

configure:
	composer install
	sudo symfony server:ca:install
	yarn install ; yarn encore dev

boot:
	symfony serve

behat:
	vendor/bin/behat
