return {
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
}
