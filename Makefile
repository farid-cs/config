include config.mk
LAZY_FILES=\
	~/.local/share/nvim/lazy \
	~/.local/share/nvim/site/pack/lazy \
	~/.local/state/nvim/lazy \
	~/.config/nvim/lazy-lock.json

install:
	mkdir -p $(BIN_PREFIX)/bin
	cp -p scripts/* $(BIN_PREFIX)/bin
	cp -p .zshenv $(HOME)/.zshenv
	cp .asoundrc $(HOME)/.asoundrc
	cp etc/nobeep.conf /etc/modprobe.d
uninstall:
	rm -rf ~/.zshenv $(LAZY_FILES)

.PHONY: install uninstall
