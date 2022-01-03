local utils = require('utils')

utils.opt('o', 'completeopt', 'menuone,noinsert,noselect')
utils.map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
utils.map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

local cmp = require'cmp'

  cmp.setup {
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end,
    },
    mapping = {
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.close(),
      ['<CR>'] = cmp.mapping.confirm {
        behavior = cmp.ConfirmBehavior.Replace,
        select = true
      },
    },
    sources = {
    { name = 'neorg' },
      { name = 'nvim_lsp' },
      { name = 'buffer' },
    },
    formatting = {
      format = require('lspkind').cmp_format {with_text = false, maxwidth = 50}
    }
  }

  vim.cmd [[highlight! default link CmpItemKind CmpItemMenuDefault]]
