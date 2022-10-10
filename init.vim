call plug#begin()
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'honza/vim-snippets'
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'ojroques/vim-oscyank'
call plug#end()

runtime coc.vim

set nowrap
set mouse=a
set background=light
set wildmenu
set noswapfile
set undofile
set undodir=~/.cache/undodir
set hlsearch
set incsearch
set termguicolors

silent! colorscheme solarized8_high
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

map <leader>y :OSCYank<CR>
map <leader>t :Tmuxline lightline<cr>
let g:lightline = {'colorscheme': 'solarized'}
