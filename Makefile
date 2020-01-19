# refs
# - https://opensource.com/article/18/8/what-how-makefile
# - https://maex.me/2018/02/dont-fear-the-makefile/
# - http://www.cs.colby.edu/maxwell/courses/tutorials/maketutor/

# targets without immediate file dependencies
.PHONY: check help install run shellcheck shfmt
.DEFAULT_GOAL := help

help:
	@echo 'make help'
	@echo '		show this help message'
	@echo 'make install'
	@echo '		set up dependencies'
	@echo 'make run'
	@echo '		run local `./totes` executable'
	@echo 'make check'
	@echo '		run shellcheck & shfmt'
	@echo 'make shfmt'
	@echo '		run shfmt'
	@echo 'make shellcheck'
	@echo '		run shellcheck'

install: .install # user-friendly alias to .install
.install: install.sh
	./install.sh
	touch .install

run: .install
	./totes

check: shellcheck shfmt

shellcheck:
	./infra/actions/shellcheck

shfmt:
	./infra/actions/shfmt
