return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',
	main  = 'nvim-treesitter.configs',
	opts  = {
		ensure_installed = { 'c', 'lua', 'vim', 'go', 'rust' },
		sync_install     = false,
		auto_install     = true,
		ignore_install   = { 'javascript' },
		highlight  = {
			additional_vim_regex_highlighting = false,
			enable = true,
		},
	},
}
