pcall(function()
  require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'github/copilot.vim'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-tree.lua'
    use 'lifepillar/vim-solarized8'
    use 'editorconfig/editorconfig-vim'
    use 'nvim-treesitter/nvim-treesitter'

    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
  end)

  require 'nvim-tree'.setup {
    diagnostics = { enable = true }
  }

  require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "solidity", "dart" },
    highlight = { enable = true }
  }

  require 'lsp'
end)

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
pcall(function()
  vim.cmd 'colorscheme solarized8_high'
  vim.opt.signcolumn = 'yes'
end)
