local utils = require('utils')
local saga = require 'lspsaga'

saga.init_lsp_saga {
  error_sign = '',
  warn_sign = '',
  hint_sign = '',
  infor_sign = '',
  border_style = "round",
}

-- show hover doc
utils.map('n', 'K', [[<cmd>lua require(saga.hover).render_hover_doc()<CR>]])

-- scroll up/down hover doc or scroll in definition preview
utils.map('n', '<C-j>', [[<cmd>lua require(saga.action).smart_scroll_with_saga(1)<CR>]])
utils.map('n', '<C-k>', [[<cmd>lua require(saga.action).smart_scroll_with_saga(-1)<CR>]])
utils.map('n', 'gh', [[:Lspsaga lsp_finder<CR>]])
utils.map('n', 'gp', [[:Lspsaga preview_definition<CR>]])
