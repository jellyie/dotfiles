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
    diagnostics = {
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
 file_ignore_patterns = {'.git/.*'},
 extensions = {
   fzf = {
      fuzzy = true, -- false will only do exact matching
			override_generic_sorter = false, -- override the generic sorter
			override_file_sorter = true, -- override the file sorter
			case_mode = "smart_case", -- or "ignore_case" or "respect_case". the default case_mode is "smart_case"
    },
  },
}

telescope.load_extension('fzf')

-- replace the simple file browsing capabilities of netrw with builtins.file_browse
vim.api.nvim_command [[
  augroup ReplaceNetrw
      autocmd VimEnter * silent! autocmd! FileExplorer
      autocmd StdinReadPre * let s:std_in=1
      autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | call luaeval("require('telescope.builtin').file_browser({cwd = _A})", argv()[0]) | endif
  augroup END
]]
 
local M = {}

M.project_files = function()
  local opts = {
    hidden = true,
    theme = 'dropdown',
    file_ignore_patterns = {'.git/.*', '.png/.*'}
  } -- define here if you want to define something
  local ok = pcall(require"telescope.builtin".git_files, opts)
  if not ok then require"telescope.builtin".find_files(opts) end
end

return M
