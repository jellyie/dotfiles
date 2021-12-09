local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    initial_mode = 'normal',
    mappings = {
      n = {
        ["q"] = actions.close,
      },
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    file_browser = {
      theme = 'ivy',
      hidden = true,
    }
  }
}

