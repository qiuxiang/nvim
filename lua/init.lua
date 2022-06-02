pcall(function()
  require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "solidity", "kotlin" },
    highlight = { enable = true },
  }
end)

pcall(function()
  require 'nvim-tree'.setup {
    diagnostics = { enable = true },
    renderer = {
      icons = {
        show = {
          file = false,
          folder = false,
        },
      },
    },
  }
end)
