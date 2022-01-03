return require('packer').startup({function(use)
   
    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Color scheme
    use { 'EdenEast/nightfox.nvim' }

    -- Dev icons
    use { 'kyazdani42/nvim-web-devicons' }

    -- Status line
    use { 'nvim-lualine/lualine.nvim' } 

    -- Fuzzy finder
     use { 'nvim-lua/popup.nvim' }
     use { 'nvim-lua/plenary.nvim' }
     use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    
    -- Lightspeed
    use { 'ggandor/lightspeed.nvim'} 

    -- Neorg
    use { 
    'nvim-neorg/neorg',
    opt = false,
    requires = {'nvim-lua/plenary.nvim'},
    after = 'nvim-treesitter',
     }

    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp' } 
    use { 'hrsh7th/cmp-nvim-lsp' }
    use { 'hrsh7th/cmp-buffer' }

    -- Adds vscode-like pictograms to neovim built-in lsp
    use { 'onsails/lspkind-nvim' }
    use { 'glepnir/lspsaga.nvim' }
    
    -- Dashboard
    use { 'glepnir/dashboard-nvim' }

    -- Shows available code actions
    use {'kosayoda/nvim-lightbulb'}

    -- Snippets
    use { 'L3MON4D3/LuaSnip' }

    -- Automatically creates missing LSP diagnostics highlight groups for color schemes w/o support
    use { 'folke/lsp-colors.nvim' }

    -- Nvim Autopairs
    use { 'windwp/nvim-autopairs' }

    -- Treesitter
   use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }  

    -- Flutter 
    use { 'akinsho/flutter-tools.nvim',
    requires = {'nvim-lua/plenary.nvim'}, 
    }
    
    -- Lua development
    use { 'tjdevries/nlua.nvim' }


    -- Vim dispatch
    use { 'tpope/vim-dispatch' }

    -- Vim repeated 
    use { 'tpope/vim-repeat' }

end})
