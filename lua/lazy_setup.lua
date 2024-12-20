require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4", -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
    opts = {
      -- icons_enabled = false,
    },
  },
  { import = "community" },
  { import = "plugins" },
}) --[[@as LazySpec]]
