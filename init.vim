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

set nowrap
set mouse=a
set background=light

if $TERM_PROGRAM != "Apple_Terminal"
  set termguicolors
endif

silent colorscheme solarized8_high
if exists('g:neovide')
  set guifont=noto\ sans\ mono\ cjk\ sc:h10
else
  highlight Normal guibg=none
  highlight Normal ctermbg=none
end

autocmd BufNewFile,BufRead *.sol setfiletype solidity
" set runtimepath^=~/Documents/Projects/coc-solidity
