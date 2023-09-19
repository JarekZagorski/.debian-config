local lsp = require('lsp-zero').preset({})


lsp.ensure_installed({
	'lua_ls',
	'gopls',
	'tsserver',
	'clangd',
	'jedi_language_server',
	'bashls',
	'marksman',
	'robotframework_ls',
})

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
