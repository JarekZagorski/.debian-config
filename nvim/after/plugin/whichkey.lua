local telescope = require('telescope.builtin')
local wk = require("which-key")

---@param pointer function
local call = function(pointer, ...)
    local arg = { ... }
    return function()
        pointer(unpack(arg))
    end
end

-- Telescope
--vim.keymap.set('n', '<leader>pf', telescope_b.find_files, {})
--vim.keymap.set('n', '<C-p>', telescope.git_files, {})
-- Neotree
--vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
-- Undotree
vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
-- Fugitive
vim.keymap.set('n', '<leader>gs', vim.cmd.Git)
-- Harpoon
local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

-- vim.keymap.set('n', '<leader>a', mark.add_file)
-- vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu)
-- vim.keymap.set('n', '<C-h>', function() ui.nav_file(1) end)
-- vim.keymap.set('n', '<C-j>', function() ui.nav_file(2) end)
-- vim.keymap.set('n', '<C-k>', function() ui.nav_file(3) end)
-- vim.keymap.set('n', '<C-l>', function() ui.nav_file(4) end)

-- <leader> segment
wk.register({
    p = {
        name = 'Project',
        f = { telescope.find_files, 'Files' },
        v = { '<cmd>Neotree toggle<cr>', 'View' },
        g = { telescope.live_grep, 'Grep' },
    },
    a = { mark.add_file, 'Harpoon: add file' },
    y = { 'V"+y', 'Yank line to clipboard' },
}, { prefix = '<leader>' })

-- Ctrl based segment
wk.register({
    ['<C-h>'] = { call(ui.nav_file, 1), 'Harpoon: file 1' },
    ['<C-j>'] = { call(ui.nav_file, 2), 'Harpoon: file 2' },
    ['<C-k>'] = { call(ui.nav_file, 3), 'Harpoon: file 3' },
    ['<C-l>'] = { call(ui.nav_file, 4), 'Harpoon: file 4' },
    ['<C-e>'] = { ui.toggle_quick_menu, 'Harpoon: open menu' },
})

-- visual segment
wk.register({

}, { mode = 'v' })

-- lsp-zero descriptions
wk.register({
    K = { vim.lsp.buf.hover, 'Display Hover Information' },
    g = {
        d = {vim.lsp.buf.definition, 'Jump to definition' },
        D = {vim.lsp.buf.declaration, 'Jump to Declaration' },
        i = {vim.lsp.buf.implementation, 'List implementations' },
        o = {vim.lsp.buf.type_definition, 'Jump to type definition' },
        r = {vim.lsp.buf.references, 'List all references' },
        s = {vim.lsp.buf.signature_help, 'Display signature information' },
        l = {vim.diagnostic.open_float, 'Show Diagnostics' },
    },
    ['<F2>'] = {vim.lsp.buf.rename, 'Rename' },
    ['<F3>'] = {vim.lsp.buf.format, 'Format buffer using attached lsp'},
    ['<F4>'] = {vim.lsp.buf.code_action, 'Code action'},
    ['[d']   = {vim.diagnostic.goto_prev, 'Previous diagnostics'},
    [']d']   = {vim.diagnostic.goto_next, 'Next diagnostics'},
}, { mode = 'n' })
