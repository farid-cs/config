return {
	'akinsho/toggleterm.nvim',
	opts = {
		terminal_mappings = false,
		insert_mappings   = false,
		open_mapping      = '<leader>t',
		float_opts        = {height = 40, width = 160},
		direction         = 'float',
		autochdir         = true,
	},
	cmd = 'ToggleTerm',
}
