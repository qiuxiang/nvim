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
Plug 'kyazdani42/nvim-tree.lua'
call plug#end()

runtime coc.vim
lua require 'init'

set background=light
silent colorscheme solarized8_high
if !exists('g:neovide')
  highlight Normal guibg=none
  highlight Normal ctermbg=none
end

set guifont=noto\ sans\ mono\ cjk\ sc:h12
autocmd BufNewFile,BufRead *.sol setfiletype solidity
" set runtimepath^=~/Documents/Projects/coc-solidity
