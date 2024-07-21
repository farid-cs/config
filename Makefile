include config.mk
LAZY_FILES=~/.local/share/nvim/lazy ~/.local/share/nvim/site/pack/lazy ~/.local/state/nvim/lazy ~/.config/nvim/lazy-lock.json 

install:
	cp scripts/* /usr/local/bin
	cp .zshenv $(HOME)/.zshenv
uninstall:
	rm -rf ~/.zshenv $(LAZY_FILES)

.PHONY: default install uninstall
