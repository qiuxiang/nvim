call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'ojroques/vim-oscyank'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'sainnhe/everforest'
Plug 'lambdalisue/fern-git-status.vim'
call plug#end()

set termguicolors
set background=light
silent! colorscheme everforest

set nowrap
set mouse=a
set undofile
set undodir=~/.cache/vim-undo/
set wildmenu
set hlsearch
set incsearch
set noswapfile

highlight clear SignColumn

let g:netrw_liststyle = 3
let g:netrw_banner = 0

let g:oscyank_term = 'default'
map <leader>y :OSCYankVisual<CR>

let g:fern#renderer#default#leading = "  "
let g:fern#renderer#default#leaf_symbol = "  "
let g:fern#renderer#default#collapsed_symbol = "+ "
let g:fern#renderer#default#expanded_symbol = "- "
