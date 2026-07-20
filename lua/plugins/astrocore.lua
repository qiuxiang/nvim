---@type LazySpec
return {
  "AstroNvim/astrocore",
  opts_extend = {},
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        relativenumber = false,
        number = false,
        background = "light",
      },
    },
    treesitter = {
      auto_install = false,
      ensure_installed = {},
    },
  },
}
