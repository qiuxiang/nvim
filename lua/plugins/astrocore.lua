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
    },
    -- autocmds = {
    --   transparent_bg = {
    --     {
    --       event = "ColorScheme",
    --       callback = function()
    --         for _, group in ipairs({
    --           "Normal",
    --           "NormalNC",
    --         }) do
    --           vim.api.nvim_set_hl(0, group, { bg = "NONE" })
    --         end
    --       end,
    --     },
    --   },
    -- },
  },
}
