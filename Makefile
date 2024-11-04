include config.mk
LAZY_FILES=\
	~/.local/share/nvim/lazy \
	~/.local/share/nvim/site/pack/lazy \
	~/.local/state/nvim/lazy \
	~/.config/nvim/lazy-lock.json

install:
	cp -p .zprofile $(HOME)/.zprofile
	cp -p .asoundrc $(HOME)/.asoundrc
	mkdir -p $(PREFIX)/bin
	cp -p scripts/* $(PREFIX)/bin
	mkdir -p /etc/modprobe.d
	cp etc/nobeep.conf /etc/modprobe.d
uninstall:
	rm -rf ~/.zshenv $(LAZY_FILES)

.PHONY: install uninstall
