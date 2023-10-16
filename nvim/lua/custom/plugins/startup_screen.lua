return {
    {
        'startup-nvim/startup.nvim',
        config = function()
            require"startup".setup()
        end,
        dependencies = {
            { "nvim-telescope/telescope.nvim" }, { "nvim-lua/plenary.nvim" } 
        },
    }
}
