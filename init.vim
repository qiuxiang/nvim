set nowrap
set mouse=a
set ignorecase
set smartcase

if $TERM_PROGRAM != "Apple_Terminal"
  set termguicolors
endif

call plug#begin()
if $TERM_PROGRAM != "Apple_Terminal"
  Plug 'itchyny/lightline.vim'
  Plug 'edkolev/tmuxline.vim'
endif
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
