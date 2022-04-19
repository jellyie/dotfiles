-- Map leader to space 
vim.g.mapleader = ''

-- Plugin configs to improve start-up time
require('plugins/impatient_nvim')
require('plugins/filetype_nvim')

-- Sensible defaults
require('settings')

-- Custom keymaps
require('mappings')

-- Load/source plugins 
-- ~/.config/nvim/lua/plugins/packer.lua
require('plugins/packer_nvim')
