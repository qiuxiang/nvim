set guitablabel=\ %t\ %M
set nowrap
set ruler
set wildmenu
set completeopt=longest,menu

if has('gui_running')
  set guioptions-=m
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b
  set guioptions-=e
  set lines=36 columns=86
  set guifont=Ubuntu\ Mono\ 13
endif

color desert
