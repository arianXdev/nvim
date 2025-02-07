return {
    {
        'diegoulloao/neofusion.nvim',
        priority = 1000,
        config = function()
            require('neofusion').setup {
                transparent_mode = true,
            }

            vim.cmd.colorscheme 'neofusion'
        end,
    },

    {
        'oxfist/night-owl.nvim',
        enabled = false,
        priority = 1000,
        config = function()
            require('night-owl').setup {
                transparent_background = true,
            }

            vim.cmd.colorscheme 'night-owl'
        end,
    },
}
