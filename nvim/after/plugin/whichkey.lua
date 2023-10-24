local telescope = require('telescope.builtin')
local wk = require("which-key")
local lib = require('custom.lib')

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
        v = { vim.cmd.Neotree, 'View' },
    },
    a = { mark.add_file, 'Harpoon: add file' },
    y = { 'V"+y', 'Yank line to clipboard' },
}, { prefix = '<leader>' })

-- Ctrl based segment
wk.register({
    ['<C-h>'] = { lib.wrap(ui.nav_file, 1), 'Harpoon: file 1' },
    ['<C-j>'] = { lib.wrap(ui.nav_file, 2), 'Harpoon: file 2' },
    ['<C-k>'] = { lib.wrap(ui.nav_file, 3), 'Harpoon: file 3' },
    ['<C-l>'] = { lib.wrap(ui.nav_file, 4), 'Harpoon: file 4' },
    ['<C-e>'] = { ui.toggle_quick_menu, 'Harpoon: open menu' },
})

-- visual segment
wk.register({

}, { mode = 'v' })

-- lsp-zero descriptions
wk.register({
    K = 'Display Hover Information',
    g = {
        d = 'Jump to definition',
        D = 'Jump to Declaration',
        i = 'List implementations',
        o = 'Jump to type definition',
        r = 'List all references',
        s = 'Display signature information',
        l = 'Show Diagnostics',
    },
    ['<F2>'] = 'Rename',
    ['<F3>'] = 'Format buffer using attached lsp',
    ['<F4>'] = 'Code action',
    ['[d'] = 'Previous diagnostics',
    [']d'] = 'Next diagnostics',
}, { mode = 'n' })
