return {
    {
        'arianXdev/arian-night-owl.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd.colorscheme 'night-owl'
        end,
    },

    {
        'diegoulloao/neofusion.nvim',
        enabled = false,
        priority = 1000,
        config = function()
            require('neofusion').setup {
                transparent_mode = true,
            }

            vim.cmd.colorscheme 'neofusion'
        end,
    },
}
