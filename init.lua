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
    use 'saadparwaiz1/cmp_luasnip'
    use 'L3MON4D3/LuaSnip'
    use { 'akinsho/flutter-tools.nvim', requires = 'nvim-lua/plenary.nvim' }
  end)

  require 'nvim-tree'.setup {
    diagnostics = {
      enable = true,
      show_on_dirs = true,
      icons = {
        hint = 'h',
        info = 'i',
        warning = 'w',
        error = 'e',
      },
    },
    view = { width = 40, hide_root_folder = true },
    renderer = {
      highlight_git = true,
      icons = {
        show = { file = true, folder = true, folder_arrow = false, git = false },
        symlink_arrow = ' -> ',
        glyphs = {
          default = ' ',
          symlink = ' ',
          folder = {
            default = '+',
            open = '-',
            empty = '+',
            empty_open = '-',
            symlink = '+',
            symlink_open = '-',
          },
        },
      },
    },
    filesystem_watchers = { enable = false },
  }

  -- require 'nvim-treesitter.configs'.setup {
  --   ensure_installed = { 'solidity', 'kotlin', 'fish', 'typescript', 'tsx' },
  --   highlight = { enable = true }
  -- }

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
vim.cmd 'set fillchars+=vert:\\ '
