-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Shorten function name
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
keymap('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
keymap('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
keymap('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
keymap('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
keymap('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
keymap('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
keymap('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
keymap('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
keymap('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
keymap('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
keymap('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

keymap('n', '<leader>w', ':w<CR>', { desc = 'Write the current buffer' })

-- Delete a single character without copying into register
keymap('n', 'x', '"_x', opts)

-- Buffers
keymap('n', '<Tab>', ':bnext<CR>', opts)
keymap('n', '<S-Tab>', ':bprevious<CR>', opts)
keymap('n', '<leader>x', ':bdelete!<CR>', opts)

-- Navigate between splits
keymap('n', '<C-k>', ':wincmd k<CR>', opts)
keymap('n', '<C-j>', ':wincmd j<CR>', opts)
keymap('n', '<C-h>', ':wincmd h<CR>', opts)
keymap('n', '<C-l>', ':wincmd l<CR>', opts)

keymap('v', 'J', ":m '>+1<CR>gv=gv", opts)
keymap('v', 'K', ":m '<-2<CR>gv=gv", opts)

-- Undotree plugin
keymap('n', '<leader>uu', vim.cmd.UndotreeToggle, { desc = 'Undotree toggle' })
keymap('n', '<leader>uc', function()
    vim.fn.system 'rm -rf ~/.vim/undodir'
    print 'Undo history cleared!'
end, { desc = 'Clear undo history', noremap = true, silent = true })

keymap('n', '<leader>dr', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'The Substitute command (Find & Replace)' })

-- Lua
keymap('n', '<leader>ls', '<cmd>so<CR>', { desc = 'Source the current file' })
keymap('n', '<leader>ll', '<cmd>.lua<CR>', { desc = 'Execute the current line(s)' })
keymap('v', '<leader>ll', ':.lua<CR>', { desc = 'Execute the selected lines' })
keymap('n', '<leader>lx', '<cmd>source %<CR>', { desc = 'Execute the current file' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
