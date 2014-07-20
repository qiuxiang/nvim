if has('gui_running')
  set guioptions+=m
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
  set guifont=Sauce_Code_Powerline:h11:cANSI
else
  set guifont=Source\ Code\ Pro\ for\ Powerline\ Regular\ 11
  "set guifont=Droid\ Sans\ Mono
  "set guifont=M+\ 1m\ Ultra-Light\ 11
endif

color Tomorrow-Night-Eighties

"highlight LineNr guifg=DarkGray guibg=NONE ctermfg=DarkGray ctermbg=NONE
highlight clear SignColumn
