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
utils.map('n', '=', '<C-w><')
utils.map('n', '-', '<C-w>>')
utils.map('n', ';k', '<C-w>+')
utils.map('n', ';j', '<C-w>-')

-- Tabs
utils.map('n', 'te', ':tabedit')
utils.map('n', '<S-Tab>', ':tabprev<Return>')
utils.map('n', '<Tab>', ':tabnext<Return>')

-- Delete a word backwards
utils.map('n', 'dw', 'vb"_d')

-- Delete without yank
utils.map('n', '<leader>d', '"_d')
utils.map('n', 'x', '"_x')

-- Telescope keybindings 
utils.map('n', ';f', [[<cmd>lua require'../plugins/telescope_nvim'.project_files()<cr>]])
-- utils.map('n', ';f', '<cmd>Telescope git_files<cr>')
-- utils.map('n', 'ff', '<cmd>Telescope find_files<cr>')
utils.map('n', ';g', '<cmd>Telescope live_grep<cr>')
utils.map('n', 'fj', '<cmd>Telescope file_browser<cr>')
utils.map('n', '\\', '<cmd>Telescope buffers<cr>')
utils.map('n', ';;', '<cmd>Telescope help_tags<cr>')
utils.map('n', 'ca', '<cmd>Telescope lsp_code_actions<cr>')
utils.map('n', 'gD', '<cmd>Telescope diagnostics<cr>')
utils.map('n', 'gr', '<cmd>Telescope lsp_references<cr>')
utils.map('n', 'K', '<cmd>Telescope lsp_definitions<cr>')
utils.map('n', 'gi', '<cmd>Telescope lsp_implementations<cr>')

-- Trouble keybindings
utils.map('n', 'tx', '<cmd>Trouble<cr>')
utils.map('n', 'tw', '<cmd>Trouble workspace_diagnostics<cr>')
utils.map('n', 'td', '<cmd>Trouble document_diagnostics<cr>')
utils.map('n', 'tl', '<cmd>Trouble loclist<cr>')
utils.map('n', 'tq', '<cmd>Trouble quickfix<cr>')

-- Lightspeed keybindings 
vim.api.nvim_set_keymap('n', '<leader>s', '<Plug>Lightspeed_s', {})
