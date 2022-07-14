call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

runtime coc.vim
lua require 'init'

set nowrap
set mouse=a
set background=light

if $TERM_PROGRAM != 'Apple_Terminal'
  set termguicolors
endif

silent! colorscheme solarized8_high
highlight Normal guibg=none

" set runtimepath^=~/Projects/coc-solidity
