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

if has('lua')
  NeoBundle 'Shougo/neocomplete.vim'
else
  NeoBundle 'Shougo/neocomplcache.vim'
endif

NeoBundle 'joonty/vdebug'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'mkitt/tabline.vim'
NeoBundle 'mattn/emmet-vim'

call neobundle#end()
