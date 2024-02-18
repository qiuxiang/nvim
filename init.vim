call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'lifepillar/vim-solarized8'
Plug 'honza/vim-snippets'
Plug 'ojroques/vim-oscyank'
" Plug 'itchyny/lightline.vim'
" Plug 'edkolev/tmuxline.vim'
call plug#end()
runtime coc.vim
runtime lightline.vim

set nowrap
set mouse=a
" set background=light
set termguicolors
set undofile

silent! colorscheme desert
highlight clear SignColumn
highlight Normal guibg=NONE
highlight EndOfBuffer guibg=NONE
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
let g:oscyank_term = 'default'
map <leader>y :OSCYankVisual<CR>
