syntax on
filetype on
filetype plugin on
filetype plugin indent on
set nowrap
set noswapfile
set wildmenu
set completeopt-=preview
set termguicolors
set mouse=a

set ignorecase
set smartcase
set incsearch
set hlsearch

set nobackup
set nowritebackup

call plug#begin()
" Plug 'itchyny/lightline.vim'
" Plug 'edkolev/tmuxline.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lambdalisue/gina.vim'
Plug 'neoclide/coc.nvim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'pangloss/vim-javascript'
Plug 'dart-lang/dart-vim-plugin'
Plug 'lifepillar/vim-solarized8'
Plug 'udalov/kotlin-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
call plug#end()

let $RUNTIME = fnamemodify($MYVIMRC, ':p:h')
source $RUNTIME/coc.vim
source $RUNTIME/lightline.vim
source $RUNTIME/gina.vim

set background=light
colorscheme solarized8_high
highlight Normal guibg=none
highlight SignColumn guibg=none

map gb :bnext<cr>
map gB :bprev<cr>
