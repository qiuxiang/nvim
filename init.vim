set nowrap
set mouse=a

if $TERM_PROGRAM != "Apple_Terminal"
  set termguicolors
endif

call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'lifepillar/vim-solarized8'
Plug 'github/copilot.vim'
Plug 'honza/vim-snippets'
Plug 'nvim-treesitter/nvim-treesitter'
call plug#end()

runtime coc.vim
lua require 'init'

set background=light
try
  colorscheme solarized8_high
  catch
endtry

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_list_hide = '^\.'

set runtimepath^=~/Projects/coc-solidity
