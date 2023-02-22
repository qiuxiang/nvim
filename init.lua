pcall(function()
  require 'packer'.startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'prettier/vim-prettier'
    use 'tpope/vim-fugitive'
    use 'kyazdani42/nvim-tree.lua'
    use 'lifepillar/vim-solarized8'
    use 'editorconfig/editorconfig-vim'
    use 'airblade/vim-gitgutter'
    use 'ojroques/vim-oscyank'

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

  require 'lsp'
  require 'nvim_tree'
end)

vim.opt.wrap = false
vim.opt.updatetime = 300
vim.opt.undofile = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.g.oscyank_term = 'default'
vim.keymap.set('v', '<leader>y', ':OSCYank<cr>')

vim.cmd [[
silent! colorscheme solarized8_high
highlight Normal guibg=none
highlight SignColumn guibg=none
set fillchars+=vert:\ 

" 用 prettier 取代部分 lsp format
autocmd FileType javascript,typescript,css,json,html,markdown,yaml nmap <buffer> <leader>f <plug>(Prettier)
]]
