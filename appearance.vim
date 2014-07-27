if has('gui_running')
  set guioptions-=m
  set guioptions-=T
  set guioptions-=L
  set guioptions-=r
  set guioptions-=b
  set showtabline=1
  set lines=36 columns=86
endif

if &term == 'xterm'
  set t_Co=256
endif

if has('win32')
  set guifont=Consolas:h11:cANSI
else
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 10
endif

color Tomorrow-Night-Eighties

highlight clear SignColumn
