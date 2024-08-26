include config.mk
LAZY_FILES=\
	~/.local/share/nvim/lazy \
	~/.local/share/nvim/site/pack/lazy \
	~/.local/state/nvim/lazy \
	~/.config/nvim/lazy-lock.json
BIN_PREFIX=/usr/local

install:
	cp scripts/* $(BIN_PREFIX)/bin
	cp .zshenv $(HOME)/.zshenv
	cp etc/nobeep.conf /etc/modprobe.d
uninstall:
	rm -rf ~/.zshenv $(LAZY_FILES)

.PHONY: install uninstall
