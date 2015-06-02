set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'groenewege/vim-less'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'elzr/vim-json'
NeoBundle 'hail2u/vim-css3-syntax'
NeoBundle 'othree/html5.vim'
NeoBundle 'digitaltoad/vim-jade'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'tfnico/vim-gradle'
NeoBundle 'ap/vim-css-color'

NeoBundle 'mattn/emmet-vim'
"NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neocomplcache.vim'
"NeoBundle 'joonty/vdebug'
"NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mkitt/tabline.vim'

call neobundle#end()
