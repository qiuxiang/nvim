local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  'tpope/vim-fugitive',
  'nvim-tree/nvim-tree.lua',
  'lifepillar/vim-solarized8',
  'editorconfig/editorconfig-vim',
  'airblade/vim-gitgutter',
  'ojroques/vim-oscyank',

  'nvim-lua/plenary.nvim',
  'stevearc/dressing.nvim',
  'akinsho/flutter-tools.nvim',

  'b0o/schemastore.nvim',
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'saadparwaiz1/cmp_luasnip',
  'L3MON4D3/LuaSnip',
  "Exafunction/codeium.vim",
  { "Exafunction/codeium.nvim", config = true },
})

require 'lsp'
require 'nvim_tree'

vim.opt.wrap = false
vim.opt.updatetime = 300
-- vim.opt.background = 'light'
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.keymap.set('v', '<leader>y', ':OSCYankVisual<cr>')

vim.cmd [[
colorscheme solarized8_high
highlight Normal guibg=none
set guicursor=n-v-c-i:block
autocmd ColorScheme * highlight SignColumn guibg=none
autocmd ColorScheme * highlight GitGutterChange guibg=none
autocmd ColorScheme * highlight GitGutterDelete guibg=none
autocmd ColorScheme * highlight GitGutterAdd guibg=none
]]
