return {
    { "folke/neodev.nvim", opts = {} },
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- LSP Support
	{
		'neovim/nvim-lspconfig',
		dependencies = {
			{'hrsh7th/cmp-nvim-lsp'},
		},
	},

	-- Autocompletion
	{
		'hrsh7th/nvim-cmp',
		dependencies = {
			{'L3MON4D3/LuaSnip', build = "make install_jsregexp"},
		}
	}
}
