pcall(function()
  require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'prettier/vim-prettier'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-tree.lua'
    use 'lifepillar/vim-solarized8'
    use 'editorconfig/editorconfig-vim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'airblade/vim-gitgutter'

    use 'b0o/schemastore.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-nvim-lsp-signature-help'
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  end)

  require 'nvim-tree'.setup {
    diagnostics = { enable = true },
    view = { width = 40, hide_root_folder = true },
    renderer = {
      icons = {
        show = { file = true, folder = true, folder_arrow = false, git = true },
        glyphs = {
          default = ' ',
          folder = {
            default = '+',
            open = '-',
            empty = '+',
            empty_open = '-',
            symlink = '+',
            symlink_open = '-',
          },
        },
      }
    }
  }

  require 'nvim-treesitter.configs'.setup {
    ensure_installed = { 'solidity', 'kotlin', 'fish', 'typescript', 'tsx' },
    highlight = { enable = true }
  }

  require 'lsp'
end)

vim.opt.wrap = false
vim.opt.mouse = 'a'
vim.opt.updatetime = 300
vim.opt.background = 'light'
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.cmd 'silent! colorscheme solarized8_high'
