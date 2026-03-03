vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
-- vim.cmd("hi NormalNC guibg=NONE ctermbg=NONE")
-- vim.cmd("hi StatusLine guibg=NONE ctermbg=NONE")

vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    -- 禁用 indent-blankline v3
    vim.b.ibl_exclude = true
  end,
})
