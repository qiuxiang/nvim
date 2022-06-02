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
    use 'b0o/schemastore.nvim'
    use 'ms-jpq/coq_nvim'
    use 'ms-jpq/coq.artifacts'
    use 'ms-jpq/coq.thirdparty'
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  end)

  require 'nvim-tree'.setup {
    diagnostics = { enable = true },
    renderer = { icons = { show = { file = false, folder = false } } },
  }

  require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "solidity", "dart", "kotlin" },
    highlight = { enable = true },
  }

  require 'lsp'
end)

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.termguicolors = true
vim.opt.background = 'light'
pcall(function()
  vim.cmd 'colorscheme solarized8_high'
end)
