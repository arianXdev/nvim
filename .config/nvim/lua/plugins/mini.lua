-- Collection of various small independent plugins/modules
return {
    'echasnovski/mini.nvim',
    config = function()
        require('mini.comment').setup()
        require('mini.pairs').setup()
        require('mini.surround').setup()
    end,
}
