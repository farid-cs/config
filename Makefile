LAZY_LINK=https://github.com/folke/lazy.nvim.git
LAZY_PATH=~/.local/share/nvim/site/pack/lazy/start/lazy.nvim
LAZY_FILES=~/.local/share/nvim/lazy ~/.local/share/nvim/site/pack/lazy ~/.local/state/nvim/lazy ~/.config/nvim/lazy-lock.json 

default:install
install:$(HOME)/.zshenv $(LAZY_PATH)
$(HOME)/.zshenv:.zshenv
	cp $< $@
$(LAZY_PATH):
	git clone --filter=blob:none --branch=stable --depth 1 $(LAZY_LINK) $@
	nvim --headless -u nvim/lua/plugins.lua -c 'Lazy sync' -c 'qa'
uninstall:
	rm -rvf ~/.zshenv $(LAZY_FILES)

.PHONY: default install uninstall
