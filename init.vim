call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'honza/vim-snippets'
call plug#end()

runtime coc.vim

set nowrap
set mouse=a
set background=light
set noswapfile
set undofile
set undodir=~/.cache/undodir
set hlsearch
set incsearch

if $TERM_PROGRAM != 'Apple_Terminal'
  set termguicolors
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

silent! colorscheme solarized8_high

" set runtimepath^=~/Projects/coc-solidity
