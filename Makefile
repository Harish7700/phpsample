.PHONY: install-dev

install-dev: composer.phar
	./composer.phar install
	ln --symbolic --no-dereference --force config-dev config

composer.phar:
	curl -sS https://getcomposer.org/installer | php -- --version=2.2.18 --install-dir=. --filename=composer.phar
	chmod u+x composer.phar
