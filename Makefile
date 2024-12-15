include config.mk

install:
	cp -p .zprofile .asoundrc $(HOME)
	mkdir -p $(PREFIX)/bin
	cp -p scripts/* $(PREFIX)/bin

uninstall:
	rm -rf ~/.zprofile ~/.asoundrc

.PHONY: install uninstall
