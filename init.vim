set nowrap
set termguicolors
set mouse=a
set ignorecase
set smartcase

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'edkolev/tmuxline.vim'
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'lambdalisue/gina.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'github/copilot.vim'
call plug#end()

source ~/.config/nvim/coc.vim
source ~/.config/nvim/lightline.vim
source ~/.config/nvim/gina.vim

set background=light
" colorscheme solarized8_high
highlight Normal guibg=none
highlight SignColumn guibg=none
highlight SignColumn ctermbg=none

map gb :bnext<cr>
map gB :bprev<cr>
