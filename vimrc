call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
call plug#end()

set nowrap
set mouse=a
set undofile
set undodir=~/.cache/vim-undo/
set wildmenu
set hlsearch
set incsearch
set noswapfile

let g:netrw_liststyle = 3
let g:netrw_banner = 0
