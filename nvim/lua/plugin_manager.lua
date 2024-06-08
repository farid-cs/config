local on_attach = function(bufnr)
	local api = require 'nvim-tree.api'
	api.config.mappings.default_on_attach(bufnr)

	vim.keymap.set('n', 'h', api.node.navigate.parent_close, {noremap = true, buffer = bufnr})
	vim.keymap.set('n', 'l', api.node.open.edit,             {noremap = true, buffer = bufnr})
	vim.keymap.set('n', '.', api.tree.toggle_hidden_filter,  {noremap = true, buffer = bufnr})
end

require('lazy').setup({
	{
		'windwp/nvim-autopairs',
		config = true,
	},
	{
		'ellisonleao/gruvbox.nvim',
		opts = {
			contrast = 'hard',
			italic   = {strings = false},
		},
	},
	{
		'akinsho/toggleterm.nvim',
		opts = {
			terminal_mappings = true,
			insert_mappings   = false,
			open_mapping      = '<c-t>',
			float_opts        = {height = 40, width = 160},
			direction         = 'float',
			autochdir         = true,
		},
		keys = '<C-t>',
	},
	{
		'numToStr/Comment.nvim',
		opts = {
			toggler = {
				line  = '<leader>/',
				block = '<leader>?',
			},
			opleader = {
				line  = '<leader>/',
				block = '<leader>?',
			},
			mappings = {
				basic = true,
				extra = false,
			},
		},
	},
	{
		'nvim-tree/nvim-tree.lua',
		opts = {
			hijack_unnamed_buffer_when_opening = true,
			sync_root_with_cwd                 = true,
			on_attach                          = on_attach,
			sort_by                            = 'case_sensitive',
			renderer                           = {group_empty = true},
			filters                            = {dotfiles = true},
			view                               = {width = 30, side = 'right'},
			tab                                = {sync  = {open = true, close = true}},
		},
		dependencies = {'nvim-tree/nvim-web-devicons'},
	},
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		main  = 'nvim-treesitter.configs',
		opts  = {
			ensure_installed = { 'python', 'c', 'lua', 'vim', 'vimdoc', 'query', 'go', 'rust' },
			sync_install     = false,
			auto_install     = true,
			ignore_install   = { 'javascript' },
			highlight  = {
				additional_vim_regex_highlighting = false,
				enable = true,
			},
		},
	},
})