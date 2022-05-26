set nowrap
set mouse=a

if $TERM_PROGRAM != "Apple_Terminal"
  set termguicolors
endif

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'github/copilot.vim'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

runtime coc.vim
lua require 'init'

set background=light
try
  colorscheme solarized8_high
  catch
endtry

set runtimepath^=~/Projects/coc-solidity
