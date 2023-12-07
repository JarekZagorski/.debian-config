local lib = require('custom.lib')
--print('remaps')
--vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
--vim.keymap.set('n', '<leader>tt', lib.wrap(print, 'hello'))

--vim.keymap.set('i', '(', '()<esc>i')
--vim.keymap.set('i', '[', '[]<esc>i')
--vim.keymap.set('i', '{', '{}<esc>i')
--vim.keymap.set('i', '"', '""<esc>i')
--vim.keymap.set("i", "'", "''<esc>i")


--local closing_daa = { '()', '[]', '{}', '<>', '""', '\'\'' }
local closing_data = {}



for _, v in ipairs(closing_data) do
    vim.keymap.set('i', string.sub(v, 1, 1), v .. '<esc>i')
end

--- vim.keymap.set('i', '<bs>' , function ()
