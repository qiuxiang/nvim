require("lazy").setup {
  {
    "AstroNvim/AstroNvim",
    version = "^4", -- Remove version tracking to elect for nighly AstroNvim
    import = "astronvim.plugins",
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]]
