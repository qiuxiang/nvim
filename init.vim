syntax on
filetype on
filetype plugin on
filetype plugin indent on

set nowrap
set noswapfile
set wildmenu
set completeopt-=preview
set background=dark

set ignorecase
set smartcase
set incsearch
set hlsearch

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_list_hide = '\.git$,\.idea,\.gradle'
let g:netrw_keepdir = 0

let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

call plug#begin()
Plug 'vim-airline/vim-airline'
Plug 'gcmt/taboo.vim'
Plug 'mattn/emmet-vim'
Plug 'ap/vim-css-color'
Plug 'editorconfig/editorconfig-vim'
Plug 'prettier/vim-prettier'
Plug 'airblade/vim-gitgutter'
Plug 'lambdalisue/gina.vim'
Plug 'dracula/vim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': { -> coc#util#install()}}
Plug 'HerringtonDarkholme/yats.vim'
call plug#end()

source ~/.config/nvim/coc.vim
