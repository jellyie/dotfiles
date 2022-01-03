-- Map leader to space
vim.g.mapleader = ' '

local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
local execute = vim.api.nvim_command

-- Sensible defaults
require('settings')

local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
    execute 'packadd packer.nvim'
end
vim.cmd('packadd packer.nvim')
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

local packer = require'packer'
local util = require'packer.util'
packer.init({
  package_root = util.join_paths(vim.fn.stdpath('data'), 'site', 'pack')
})

-- Install plugins
require('plugins')

-- Key mappings
require('keymappings')

-- Augroups
require('autocmds')

-- Setup Lua language server using submodule
require('lsp_lua')

-- Group configurations in one folder 
require('config')
