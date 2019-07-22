syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set noswapfile
set wildmenu
set completeopt-=preview
set background=dark

highlight clear SignColumn
set signcolumn=yes

set ignorecase
set smartcase
set incsearch
set hlsearch

set nobackup
set nowritebackup

if $TERM != 'xterm'
  set termguicolors
endif

let g:lightline = {
  \ 'colorscheme': 'powerline',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ }

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lambdalisue/gina.vim'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/defx.vim

" colorscheme dracula
