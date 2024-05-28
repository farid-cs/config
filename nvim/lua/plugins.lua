require('lazy').setup({
	'sindrets/diffview.nvim',
	'ellisonleao/gruvbox.nvim',
	'nvim-tree/nvim-web-devicons',
	'akinsho/toggleterm.nvim',
	'numToStr/Comment.nvim',
	'nvim-tree/nvim-tree.lua',
	{'windwp/nvim-autopairs', config = true},
	{
		'nvim-treesitter/nvim-treesitter', 
		build = ':TSUpdate'
	}
})
