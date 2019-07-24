syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set noswapfile
set wildmenu
set completeopt-=preview
set background=light
set signcolumn=yes
highlight clear SignColumn

set ignorecase
set smartcase
set incsearch
set hlsearch

set nobackup
set nowritebackup

if $TERM != 'xterm-256color'
  set termguicolors
endif

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lambdalisue/gina.vim'
Plug 'dracula/vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'neoclide/coc.nvim', { 'do': { -> coc#util#install() } }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/defx.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/gina.vim

" colorscheme dracula
