local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    initial_mode = 'insert',
    mappings = {
      n = {
        ["q"] = actions.close,
        ["v"] = actions.select_vertical,
        ["h"] = actions.select_horizontal,

      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    git_files = {},
    file_browser = {
      theme = 'ivy',
      hidden = true,
    },
    lsp_code_actions = {
      hidden = true,
      theme = 'cursor'
    },
    lsp_document_diagnostics = {
      hidden = true,
      bufnr = 0,
      theme = 'dropdown'
    },
    lsp_implementations = {
      hidden = true,
      theme = 'dropdown'
    },
    lsp_definitions = {
      hidden = true,
      theme = 'dropdown'
    },
    lsp_type_definitions = {
      hidden = true,
    },
    lsp_references = {
      hidden = true,
      theme = 'dropdown'
    }
  },
 file_ignore_patterns = {'.git/.*'}
}

local M = {}

M.project_files = function()
  local opts = {
    hidden = true,
    file_ignore_patterns = {'.git/.*'}
  } -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

return M
