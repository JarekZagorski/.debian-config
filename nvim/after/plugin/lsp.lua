local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'lua_ls',
		'gopls',
		'tsserver',
		'clangd',
		'jedi_language_server',
		'bashls',
		'marksman',
		'robotframework_ls',
	},
	handlers = {
		lsp.default_setup,
	},

})
