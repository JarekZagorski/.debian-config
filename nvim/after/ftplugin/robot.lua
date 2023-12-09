local lib = require'custom.lib'

---@param str string
local function trim(str)
    str = string.gsub(str, '\t', '  ')
    local pos = string.find(str, '  ')
    return string.sub(str, 1, pos-1)
end

-- Define a Lua function to run a command in an existing or new terminal buffer
function RunCommandInTerminal()
    local command = 'echo "dupa"'
    local term_buf = vim.fn.bufnr('^terminal:')
    local terminal_width = 80

    if term_buf > 0 then
        -- Use the existing terminal buffer
        vim.api.nvim_set_current_buf(term_buf)
    else
        -- Create a new terminal buffer with specified width
        vim.cmd('80vnew | term')
        vim.cmd('vertical resize ' .. terminal_width)

        -- Switch to the terminal buffer
        term_buf = vim.fn.bufnr('terminal')
    end

    -- Send the command to the terminal buffer
    -- vim.fn.termopen(command)
    -- Switch back to the previous buffer
    vim.cmd('wincmd p')
end

vim.api.nvim_create_user_command('Robot', RunCommandInTerminal , {})
