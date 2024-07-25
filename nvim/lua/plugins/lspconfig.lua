return {
	'neovim/nvim-lspconfig',
	init = function()
		require'lspconfig'.clangd.setup{}
		require'lspconfig'.gopls.setup{}
	end,
}
