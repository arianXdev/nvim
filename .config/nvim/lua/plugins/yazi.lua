---@type LazySpec
return {
    'mikavilpas/yazi.nvim',
    event = 'VeryLazy',
    keys = {
        {
            '<leader>-',
            mode = { 'n', 'v' },
            '<cmd>Yazi<cr>',
            desc = 'Open yazi at the current file',
        },
        {
            -- Open in the current working directory
            '<leader>cw',
            '<cmd>Yazi cwd<cr>',
            desc = "Open the file manager in nvim's working directory",
        },
        {
            -- NOTE: this requires a version of yazi that includes
            -- https://github.com/sxyazi/yazi/pull/1305 from 2024-07-18
            '<c-up>',
            '<cmd>Yazi toggle<cr>',
            desc = 'Resume the last yazi session',
        },
    },
    opts = {
        open_for_directories = true,
        floating_window_scaling_factor = 0.8,
        yazi_floating_window_border = 'single',
        keymaps = {
            show_help = '<f1>',
            open_file_in_tab = false,
            open_file_in_horizontal_split = '<c-h>',
        },
    },
}
