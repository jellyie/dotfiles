local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

parser_configs.norg = {
    install_info = {
        url = 'https://github.com/nvim-neorg/tree-sitter-norg',
        files = { 'src/parser.c', 'src/scanner.cc' },
        branch = 'main'
    },
}

parser_configs.norg_meta = {
    install_info = {
      url = 'https://github.com/nvim-neorg/tree-sitter-norg-meta',
      files = { 'src/parser.c' },
      branch = 'main'
    },
}

parser_configs.norg_table = {
    install_info = {
      url = 'https://github.com/nvim-neorg/tree-sitter-norg-table',
      files = { 'src/parser.c' },
      branch = 'main',
    },
}

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    'norg',
    'norg_meta',
    'norg_table',
    'tsx',
    'toml',
    'fish',
    'php',
    'json',
    'yaml',
    'swift',
    'html',
    'scss'
  },
}

parser_configs.tsx.filetype_to_parsername = { 'javascript', 'typescript.tsx' }
