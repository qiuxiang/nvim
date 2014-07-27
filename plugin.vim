set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'digitaltoad/vim-jade'

NeoBundle 'scrooloose/syntastic'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'jistr/vim-nerdtree-tabs' 
NeoBundle 'joonty/vdebug'
NeoBundle 'ap/vim-css-color'
NeoBundle 'bling/vim-airline'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'mkitt/tabline.vim'
NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'Shougo/neocomplete.vim'
"NeoBundle 'Shougo/vimshell.vim'
"NeoBundle 'Shougo/vimproc.vim', {
"      \ 'build' : {
"      \     'windows' : 'tools\\update-dll-mingw',
"      \     'unix' : 'make -f make_unix.mak',
"      \    },
"      \ }

NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'chriskempson/vim-tomorrow-theme'
NeoBundle 'zeis/vim-kolor'
NeoBundle 'baskerville/bubblegum'

NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'gregsexton/gitv'
NeoBundle 'tpope/vim-fugitive'

if !has('win32')
  NeoBundle 'Yggdroot/indentLine'
  NeoBundle 'edkolev/promptline.vim'
endif
