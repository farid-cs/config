PACKER_LINK=https://github.com/wbthomason/packer.nvim
PACKER=$(HOME)/.local/share/nvim/site/pack/packer/start/packer.nvim

default:install

install:$(HOME)/.zshenv $(PACKER)
$(HOME)/.zshenv:.zshenv
	cp $< $@
$(PACKER):
	git clone --depth 1 $(PACKER_LINK) $@
	nvim --headless -u nvim/lua/plugins.lua -c 'autocmd User PackerComplete quitall' -c 'PackerSync'
uninstall:
	rm -rvf $(HOME)/.zshenv $(PACKER) ~/.local/share/nvim/site/pack/packer/start

.PHONY: default install uninstall
