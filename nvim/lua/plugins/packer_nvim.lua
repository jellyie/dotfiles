local fn = vim.fn   -- to call Vim functions e.g. fn.bufnr()
local execute = vim.api.nvim_command
local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

-- Auto install packer.nvim if it isn't present 
if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({
      'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path
  })
  execute 'packadd packer.nvim'
end

-- don't throw any error on first use by packer
local ok, packer = pcall(require, 'packer')
if not ok then return end

return packer.startup {
    function()
      -- Packer can manage itself
      use 'wbthomason/packer.nvim'

      -- Improve start-up time
      use { -- Speed up loading Lua modules in Neovim to improve startup time
            'lewis6991/impatient.nvim'
          }

      use { -- Speed up startup time with a faster version of filetype.vim
            'nathom/filetype.nvim'
          }

      -- Color scheme
      use { 'EdenEast/nightfox.nvim',
            config = [[ require('plugins/nightfox') ]]
          }

      -- Dev icons
      use { 'kyazdani42/nvim-web-devicons',
              config = [[ require('plugins/web-devicons') ]]
          }

      -- Status line
      use { 'nvim-lualine/lualine.nvim',
            requires = 'kyazdani42/nvim-web-devicons',
            config = [[ require('plugins/lualine') ]],
            opt=true,
          } 

      -- Diagnostics Viewer
      use { 'folke/trouble.nvim',
            requires = 'kyazdani42/nvim-web-devicons',
            config = function()
              require('trouble').setup {

              }
          end
      }

      -- BEST Fuzzy finder... TELESCOPE!!!
      use { 'nvim-telescope/telescope.nvim',
              requires = {
                    'nvim-lua/popup.nvim', 
                    'nvim-lua/plenary.nvim',
                    {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'},
              config = [[ require('plugins/telescope_nvim') ]]
	      }
          }
      

      -- Lightspeed
      use { 'ggandor/lightspeed.nvim',
            config = [[ require('plugins/lightspeed') ]]
          } 

          
      -- Neoclip 
      use { 'AckslD/nvim-neoclip.lua',
      requires = {'nvim-telescope/telescope.nvim'},
      config = [[ require('plugins/neoclip') ]]
          }

      
      -- LSP config, a collection of common configurations for Neovim's built-in language server client
      use { 'neovim/nvim-lspconfig',
            config = [[ require('plugins/lsp') ]]
          }

      -- A completion plugin for Neovim 
      use { 'hrsh7th/nvim-cmp',
            requires = {
                  'hrsh7th/cmp-nvim-lsp',
                  {'hrsh7th/cmp-nvim-lua', ft = 'lua' },
                  "hrsh7th/cmp-buffer", -- nvim-cmp source for buffer words.
                  "hrsh7th/cmp-path", -- nvim-cmp source for filesystem paths.
                  "saadparwaiz1/cmp_luasnip" -- luasnip completion source for nvim-cmp
            },
            config = [[ require('plugins/cmp') ]]
          } 


      -- Adds vscode-like pictograms to neovim built-in lsp
      use { 'onsails/lspkind-nvim',
            config = [[ require('plugins/lspkind') ]]
          }
      
      -- Dashboard
      use { 'glepnir/dashboard-nvim',
            config = [[ require('plugins/dashboard') ]]
          }


      -- Snippets
      use { 'L3MON4D3/LuaSnip',
          }

      -- Automatically creates missing LSP diagnostics highlight groups for color schemes w/o support
      use { 'folke/lsp-colors.nvim',
            config = [[ require('plugins/lsp-colors') ]]
          }

      -- Nvim Autopairs
      use { 'windwp/nvim-autopairs',
            config = [[ require('plugins/autopairs') ]]
          }

      -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter',
          run = ':TSUpdate',
          config = [[ require('plugins/treesitter') ]]
        }  

      -- Flutter 
      use { 'akinsho/flutter-tools.nvim',
            ft = 'dart',
            requires = {
              'nvim-lua/plenary.nvim', 
              'Neevash/awesome-flutter-snippets',
              {
                  'dart-lang/dart-vim-plugin', -- Syntax highlighting for Dart in Vim
                  config = [[ require('plugins/dart-vim-plugin') ]]
              }
            },
            config = [[ require('plugins/flutter-tools') ]]
          }
      
      -- Vim fugitive
      use { 'tpope/vim-fugitive',
            config = [[ require('plugins/fugitive') ]]
          }

      -- Vim dispatch
      use { 'tpope/vim-dispatch' }

      -- Vim repeated 
      use { 'tpope/vim-repeat' }
      

      end, 

      config = {
              compile_path = vim.fn.stdpath('config') .. '/plugin/packer_compiled.lua',
              display = {
                        open_fn = function()
                                return require('packer.util').float({border = 'single'})
                        end
              }
          } 
  }
