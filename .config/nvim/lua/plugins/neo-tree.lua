-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'MunifTanjim/nui.nvim',
    },
    cmd = 'Neotree',
    keys = {
        { '<leader>e', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    },
    opts = {
        popup_border_style = 'rounded',
        default_component_configs = {
            icon = {
                provider = function(icon, node) -- default icon provider utilizes nvim-web-devicons if available
                    if node.type == 'file' or node.type == 'terminal' then
                        icon.text = '-'
                        icon.highlight = ''
                    end
                end,
            },
        },
        filesystem = {
            window = {
                mappings = {
                    ['<leader>e'] = 'close_window',
                },
            },
            filtered_items = {
                hide_dotfiles = false,
            },
        },
    },
}
