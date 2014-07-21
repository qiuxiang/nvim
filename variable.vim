let g:NERDTreeWinPos = 'right'
let g:NERDTreeMinimalUI = 1
let g:nerdtree_tabs_open_on_gui_startup = 0

let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_at_startup = 1

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_at_startup = 1

let g:syntastic_python_checkers = ['python']
let g:syntastic_css_checkers = ['csslint']

let g:vimfiler_tree_leaf_icon = ''

let g:tagbar_left = 1
let g:tagbar_compact = 1

let g:airline_theme = 'laederon'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:indentLine_color_term = 237
let g:indentLine_faster = 1

let mapleader = ','
let g:mapleader = ','

if has('win32')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
endif
