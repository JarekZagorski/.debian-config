local lib = require('custom.lib')
local api = vim.api

local function test()
    local cl = api.nvim_get_current_line()
    lib.run_in_terminal('echo "'..cl..'"')
end


