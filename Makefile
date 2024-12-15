include config.mk

install:
	cp -p .zprofile $(HOME)/.zprofile
	cp -p .asoundrc $(HOME)/.asoundrc
	mkdir -p $(PREFIX)/bin
	cp -p scripts/* $(PREFIX)/bin
	mkdir -p /etc/modprobe.d

uninstall:
	rm -rf ~/.zprofile

.PHONY: install uninstall
