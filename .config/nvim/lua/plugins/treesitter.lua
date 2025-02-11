return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    main = 'nvim-treesitter.configs', -- Sets main module to use for opts
    event = { 'BufReadPre', 'BufNewFile' },
    dependencies = {
        {
            'nvim-treesitter/nvim-treesitter-textobjects',
            lazy = true,
            config = function()
                require('nvim-treesitter.configs').setup {
                    textobjects = {
                        select = {
                            enable = true,
                            lookahead = true,

                            keymaps = {
                                ['af'] = { query = '@call.outer', desc = 'Select outer part of a function call' },
                                ['if'] = { query = '@call.inner', desc = 'Select inner part of a function call' },

                                ['am'] = { query = '@function.outer', desc = 'Select outer part of a method / function definition' },
                                ['im'] = { query = '@function.inner', desc = 'Select inner part of a method / function definition' },

                                ['ac'] = { query = '@conditional.outer', desc = 'Select outer part of a conditional' },
                                ['ic'] = { query = '@conditional.inner', desc = 'Select inner part of a conditional' },

                                ['al'] = { query = '@loop.outer', desc = 'Select outer part of a loop' },
                                ['il'] = { query = '@loop.inner', desc = 'Select inner part of a loop' },

                                ['aa'] = { query = '@parameter.outer', desc = 'Select outer part of a parameter / argument' },
                                ['ia'] = { query = '@parameter.inner', desc = 'Select inner part of a parameter / argument' },
                            },
                        },
                        -- swap = {
                        --     enable = true,
                        --     swap_next = {
                        --         ['<leader>na'] = '@parameter.inner', -- swap parameters/argument with next
                        --         ['<leader>n:'] = '@property.outer', -- swap object property with next
                        --         ['<leader>nm'] = '@function.outer', -- swap function with next
                        --     },
                        --     swap_previous = {
                        --         ['<leader>pa'] = '@parameter.inner', -- swap parameters/argument with prev
                        --         ['<leader>p:'] = '@property.outer', -- swap object property with prev
                        --         ['<leader>pm'] = '@function.outer', -- swap function with previous
                        --     },
                        -- },
                        move = {
                            enable = true,
                            set_jumps = true,
                            goto_next_start = {
                                [']f'] = { query = '@call.outer', desc = 'Next function call start' },
                                [']m'] = { query = '@function.outer', desc = 'Next method/function def start' },
                                [']c'] = { query = '@conditional.outer', desc = 'Next conditional start' },
                                [']l'] = { query = '@loop.outer', desc = 'Next loop start' },
                            },
                            goto_next_end = {
                                [']F'] = { query = '@call.outer', desc = 'Next function call end' },
                                [']M'] = { query = '@function.outer', desc = 'Next method/function def end' },
                                [']C'] = { query = '@conditional.outer', desc = 'Next conditional end' },
                                [']L'] = { query = '@loop.outer', desc = 'Next loop end' },
                            },
                            goto_previous_start = {
                                ['[f'] = { query = '@call.outer', desc = 'Prev function call start' },
                                ['[m'] = { query = '@function.outer', desc = 'Prev method/function def start' },
                                ['[c'] = { query = '@conditional.outer', desc = 'Prev conditional start' },
                                ['[l'] = { query = '@loop.outer', desc = 'Prev loop start' },
                            },
                            goto_previous_end = {
                                ['[F'] = { query = '@call.outer', desc = 'Prev function call end' },
                                ['[M'] = { query = '@function.outer', desc = 'Prev method/function def end' },
                                ['[C'] = { query = '@conditional.outer', desc = 'Prev conditional end' },
                                ['[L'] = { query = '@loop.outer', desc = 'Prev loop end' },
                            },
                        },
                    },
                }
            end,
        },
    },

    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`
    opts = {
        ensure_installed = {
            'bash',
            'c',
            'diff',
            'html',
            'lua',
            'luadoc',
            'markdown',
            'markdown_inline',
            'query',
            'vim',
            'vimdoc',
            'python',
            'javascript',
            'typescript',
            'solidity',
        },
        -- Autoinstall languages that are not installed
        auto_install = true,
        highlight = {
            enable = true,
            -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
            --  If you are experiencing weird indenting issues, add the language to
            --  the list of additional_vim_regex_highlighting and disabled languages for indent.
            additional_vim_regex_highlighting = { 'ruby' },
        },
        indent = { enable = true, disable = { 'ruby' } },
        incremental_selection = {
            enable = true,
            keymaps = {
                init_selection = '<C-space>',
                node_incremental = '<C-space>',
                scope_incremental = false,
                node_decremental = '<bs>',
            },
        },
    },
}
