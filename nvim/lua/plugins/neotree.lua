return {
	'nvim-neo-tree/neo-tree.nvim',
	branch = 'v3.x',
	dependencies = {
		'nvim-lua/plenary.nvim',
		'nvim-tree/nvim-web-devicons',
		'MunifTanjim/nui.nvim',
	},
	opts = {
		filesystem = {
			hijack_netrw_behaivor = "open_current",
		},
		window = {
			position = "current",
		},
	},
}
