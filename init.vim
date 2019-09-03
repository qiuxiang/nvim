syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set noswapfile
set wildmenu
set completeopt-=preview
set signcolumn=yes
set termguicolors

set ignorecase
set smartcase
set incsearch
set hlsearch

set nobackup
set nowritebackup

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lambdalisue/gina.vim'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-git'
call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/defx.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/gina.vim

colorscheme dracula
highlight Normal guibg=NONE
