---@type LazySpec
return {
  "AstroNvim/astrocore",
  ---@type AstroCoreOpts
  opts = {
    options = {
      opt = {
        relativenumber = false,
        number = false,
        background = "light",
      },
      g = {
        clipboard = {
          copy = { ["+"] = require("vim.ui.clipboard.osc52").copy("+") },
          paste = { ["+"] = require("vim.ui.clipboard.osc52").paste("+") },
        },
      },
    },
  },
}
