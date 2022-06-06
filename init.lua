pcall(function()
  require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'prettier/vim-prettier'
    use 'github/copilot.vim'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-tree.lua'
    use 'lifepillar/vim-solarized8'
    use 'editorconfig/editorconfig-vim'

    use 'b0o/schemastore.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  end)

  require 'nvim-tree'.setup {
    diagnostics = { enable = true },
    view = { width = 40},
  }

  require 'lsp'
end)

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
-- vim.opt.background = 'light'
pcall(function()
  vim.cmd 'colorscheme solarized8_high'
  vim.cmd 'highlight Normal guibg=none'
  vim.cmd 'highlight Normal ctermbg=none'
end)
vim.cmd 'au BufNewFile,BufRead *.sol setf solidity'
