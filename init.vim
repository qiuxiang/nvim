call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'ojroques/vim-oscyank'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-hijack.vim'
Plug 'lambdalisue/fern-git-status.vim'
Plug 'sainnhe/everforest'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
call plug#end()
runtime lightline.vim

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
set fillchars+=vert:│

highlight clear SignColumn

let g:oscyank_term = 'default'
map <leader>y :OSCYankVisual<CR>

let g:fern#renderer#default#leading = "  "
let g:fern#renderer#default#leaf_symbol = "  "
let g:fern#renderer#default#collapsed_symbol = "+ "
let g:fern#renderer#default#expanded_symbol = "- "
let g:fern#drawer_width = 40
