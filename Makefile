# refs
# - https://opensource.com/article/18/8/what-how-makefile
# - https://maex.me/2018/02/dont-fear-the-makefile/
# - http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/

# targets without immediate file dependencies
.PHONY: install run help
.DEFAULT_GOAL := help

help:
	@echo 'make help'
	@echo '		show this help message'
	@echo 'make install'
	@echo '		set up dependencies'
	@echo 'make run'
	@echo '		run local `./totes` executable'

install: .install # user-friendly alias to .install
.install: install.sh
	./install.sh
	touch .install

run: .install
	./totes
