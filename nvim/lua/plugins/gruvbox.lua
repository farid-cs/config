return {
	'ellisonleao/gruvbox.nvim',
	opts = {
		contrast  = 'hard',
		italic    = {strings = false},
		overrides = {
			['@function'] = {fg = '#b8bb26'},
			['@function.call'] = {fg = '#b8bb26'},
			['@function.method'] = {fg = '#b8bb26'},
			['@function.method.call'] = {fg = '#b8bb26'},
		},
	},
	init = function()
		vim.cmd.colorscheme 'gruvbox'
	end,
}
