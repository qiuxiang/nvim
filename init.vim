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
Plug 'yegappan/lsp'
call plug#end()
runtime fern.vim
runtime lightline.vim
runtime lsp.vim

set termguicolors
set background=light
silent! colorscheme everforest
highlight clear SignColumn

set nowrap
set mouse=a
set undofile
set undodir=~/.cache/vim-undo/
set wildmenu
set hlsearch
set incsearch
set noswapfile
set autoread
set fillchars+=vert:│

let &t_fe = "\<Esc>[?1004h"
let &t_fd = "\<Esc>[?1004l"
autocmd FocusGained,CursorHold * silent! checktime

map <leader>y :OSCYankVisual<CR>
map <leader>e :Fern . -drawer -toggle<CR>
