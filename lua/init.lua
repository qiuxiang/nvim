require 'nvim-treesitter.configs'.setup {
  ensure_installed = { "solidity", "kotlin" },
  highlight = { enable = true }
}

require 'nvim-tree'.setup {
  diagnostics = { enable = true }
}
