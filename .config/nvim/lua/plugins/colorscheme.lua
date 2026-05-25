return {
    {
        'arianXdev/arian-night-owl.nvim',
        lazy = false,
        priority = 1000,
        enabled = true,
        config = function()
            vim.cmd.colorscheme 'night-owl'
        end,
    },
}
