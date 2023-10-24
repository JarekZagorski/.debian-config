local sr_str = 'splitright'

local M = {}
local opts = {}
opts.split_size = 80

---@param cmd string
function M.run_in_terminal (cmd)
    local sr_old = vim.api.nvim_get_option(sr_str)
    if not sr_old then
        vim.cmd.set(sr_str)
    end
    vim.cmd(opts.split_size..'vsplit')
    vim.cmd.terminal(cmd)
    if not sr_old then
        vim.cmd.set(sr_str..'&')
    end
end

---@param pointer function
function M.wrap (pointer, ...)
    local arg = {...}
    return function ()
        pointer(unpack(arg))
    end
end

-- Turns vim key combination into command
---@param keys string
function M.keycomb_to_command(keys)
    return vim.api.nvim_replace_termcodes(keys, true, true, true)
end

return M
