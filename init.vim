syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set noswapfile

set ignorecase
set smartcase
set incsearch
set hlsearch

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_list_hide = '^\.'

let g:ale_set_signs = 0

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'pangloss/vim-javascript'
Plug 'gcmt/taboo.vim'
Plug 'vim-airline/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier'
Plug 'w0rp/ale'
Plug 'tpope/vim-fugitive'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
endif
call plug#end()
call deoplete#enable()
