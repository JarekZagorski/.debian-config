local lib = require('custom.lib')
--print('remaps')
--vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
--vim.keymap.set('n', '<leader>tt', lib.wrap(print, 'hello')) 


vim.keymap.set('i', '(', '()<esc>i')
vim.keymap.set('i', '[', '[]<esc>i')
vim.keymap.set('i', '{', '{}<esc>i')
vim.keymap.set('i', '"', '""<esc>i')
vim.keymap.set("i", "'", "''<esc>i")

local closing_data = { '()', '[]', '{}', '<>', '""', "''" }

--- vim.keymap.set('i', '<bs>' , function ()
