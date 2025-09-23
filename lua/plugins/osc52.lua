---@type LazySpec
return {
  "ojroques/nvim-osc52",
  init = function()
    vim.keymap.set("v", "<leader>y", require("osc52").copy_visual, { desc = "Yank" })
  end,
}
