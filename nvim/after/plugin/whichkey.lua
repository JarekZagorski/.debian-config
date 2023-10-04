local telescope = require('telescope.builtin')
local wk = require("which-key")

---@param pointer function
local call = function (pointer, ...)
    local arg = {...}
    return function ()
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
        v = { vim.cmd.Neotree, 'View' },
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
