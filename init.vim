call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
call plug#end()

runtime coc.vim

set nowrap
set mouse=a
set background=light
set noswapfile
set undofile
set undodir=~/.cache/undodir
set hlsearch
set incsearch
set termguicolors

silent! colorscheme solarized8

map <leader>t :Tmuxline lightline<cr>
let g:lightline = {
  \ 'colorscheme': 'solarized',
  \ 'separator': { 'left': '', 'right': '' },
  \ 'subseparator': { 'left': '', 'right': '' },
  \ }
