return {
	'ellisonleao/gruvbox.nvim',
	opts = {
		contrast  = 'hard',
		italic    = {strings = false},
		bold = false,
	},
	init = function()
		vim.cmd.colorscheme 'gruvbox'
	end,
}
