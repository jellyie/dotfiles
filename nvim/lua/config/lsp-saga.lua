local utils = require('utils')
local saga = require('lspsaga')

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

-- show hover doc
utils.map('n', 'K', [[<cmd>lua require('lspsaga.hover').render_hover_doc()<CR>]])

-- scroll up/down hover doc or scroll in definition preview
utils.map('n', '<C-j>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1)<CR>]])
utils.map('n', '<C-k>', [[<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1)<CR>]])
utils.map('n', 'gh', [[:Lspsaga lsp_finder<CR>]])
utils.map('n', 'gp', [[:Lspsaga preview_definition<CR>]])

-- code action
utils.map('n', 'ca', [[<cmd>lua require('lspsaga.action').code_action()<CR>]])
utils.map('v', 'ca', [[<cmd>lua require('lspsaga.action').code_action()<CR>]])

-- line diagnostics
utils.map('n', '[e', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_prev()<CR>]])
utils.map('n', ']e', [[<cmd>lua require'lspsaga.diagnostic'.lsp_jump_diagnostic_next()<CR>]])


