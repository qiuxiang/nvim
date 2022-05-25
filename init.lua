pcall(function()
  require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'prettier/vim-prettier'
    use 'github/copilot.vim'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-tree.lua'
    use 'lifepillar/vim-solarized8'
    use 'editorconfig/editorconfig-vim'
    use 'nvim-treesitter/nvim-treesitter'

    use 'qiuxiang/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use 'b0o/schemastore.nvim'
  end)

  require 'nvim-tree'.setup {
    diagnostics = { enable = true }
  }

  require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "solidity", "dart", "kotlin" },
    highlight = { enable = true }
  }

  require 'lsp'
end)

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
pcall(function()
  vim.cmd 'colorscheme solarized8_high'
end)
