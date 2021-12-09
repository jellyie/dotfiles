local utils = require('utils')

utils.map('n', '<C-l>', '<cmd>noh<CR>') -- Clear highlights
utils.map('i', 'jk', '<Esc>')           -- jk to escape
utils.map('v', 'jk', '<Esc>')

-- Split window
utils.map('n', 'ss', ':split<Return><C-w>w') --  horizontally
utils.map('n', 'sv', ':vsplit<Return><C-w>w') -- vertically


-- Move between windows
utils.map('n', 'sh', '<C-w>h')
utils.map('n', 'sj', '<C-w>j')
utils.map('n', 'sk', '<C-w>k')
utils.map('n', 'sl', '<C-w>l')

-- Resize windows
utils.map('n', '-', '<C-w><')
utils.map('n', '=', '<C-w>>')
utils.map('n', '<C-w><up>', '<C-w>+')
utils.map('n', '<C-w><down>', '<C-w>-')

-- Tabs
utils.map('n', 'te', ':tabedit')
utils.map('n', '<S-Tab>', ':tabprev<Return>')
utils.map('n', '<Tab>', ':tabnext<Return>')

-- Delete a word backwards
utils.map('n', 'nnoremap dw', 'vb"_d')

-- Delete without yank
utils.map('n', '<leader>d', '"_d')
utils.map('n', 'x', '"_x')

-- Telescope keybindings 
utils.map('n', ';f', '<cmd>Telescope find_files<cr>')
utils.map('n', ';r', '<cmd>Telescope live_grep<cr>')
utils.map('n', 'fl', '<cmd>Telescope file_browser<cr>')
utils.map('n', '\\', '<cmd>Telescope buffers<cr>')
utils.map('n', ';;', '<cmd>Telescope help_tags<cr>')

