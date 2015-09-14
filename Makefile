#
#    Makefile for renge
#

TARGET	= renge
PREFIX	:= /usr/local
BINDIR	:= $(PREFIX)/bin
LIBDIR	:= $(PREFIX)/lib/renge
RM	:= rm
CMDLINE	:= 0
export

all clean:
	@$(MAKE) -C ./bin			$@

install-bin:
	@$(MAKE) -C ./bin			$@

install-lib:
	@$(MAKE) -C ./lib/renge			$@

install-quotes:
	@$(MAKE) -C ./share/renge		$@

install-zsh-compdef:
	@$(MAKE) -C ./share/renge/compdef	$@

install: install-bin		\
	 install-lib		\
	 install-quotes		\
	 install-zsh-compdef	

.PHONY: all			\
	install			\
	install-bin		\
	install-lib		\
	install-quotes		\
	install-zsh-compdef	\
	clean
