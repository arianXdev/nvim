return {
    'folke/noice.nvim',
    event = 'VeryLazy',
    dependencies = {
        'MunifTanjim/nui.nvim',
    },
    opts = {
        views = {
            cmdline_popup = {
                position = {
                    row = '40%',
                    col = '50%',
                },
                border = {
                    style = 'single',
                },
            },
            cmdline_popupmenu = {
                position = 'auto',
                size = 'auto',
                border = {
                    style = 'single',
                },
            },
        },
        cmdline = {
            -- view = 'cmdline', -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom.
            format = {
                cmdline = { title = ' YOUR COMMAND, SIR ' },
                search_down = false,
                search_up = false,
            },
        },
        messages = { enabled = false },
        lsp = {
            -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
            override = {
                ['vim.lsp.util.convert_input_to_markdown_lines'] = true,
                ['vim.lsp.util.stylize_markdown'] = true,
                ['cmp.entry.get_documentation'] = true, -- requires hrsh7th/nvim-cmp
            },
        },
        presets = {
            bottom_search = true, -- use a classic bottom cmdline for search
            command_palette = true, -- position the cmdline and popupmenu together
            long_message_to_split = true, -- long messages will be sent to a split
            inc_rename = false, -- enables an input dialog for inc-rename.nvim
            lsp_doc_border = false, -- add a border to hover docs and signature help
        },
    },
}
