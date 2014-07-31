let g:NERDTreeWinPos = 'right'
let g:NERDTreeMinimalUI = 1
let g:nerdtree_tabs_open_on_gui_startup = 0

let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_at_startup = 1
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.python = ''
let g:neocomplcache_omni_patterns.ruby = ''

let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1
let g:neocomplete#enable_at_startup = 1
if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.python = ''
let g:neocomplete#sources#omni#input_patterns.ruby = ''

let g:syntastic_python_checkers = ['python']
let g:syntastic_css_checkers = ['csslint']

let g:vimfiler_tree_leaf_icon = ''

let g:tagbar_left = 1
let g:tagbar_compact = 1

let g:airline_theme = 'laederon'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:indentLine_char = '┆'
let g:indentLine_color_term = 237
let g:indentLine_color_tty_dark = 0
let g:indentLine_faster = 1
let g:indentLine_noConcealCursor = 0
let g:indentLine_fileTypeExclude = ['stylus', 'jade', 'nerdtree']

let mapleader = ','
let g:mapleader = ','

if has('win32')
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
else
  let g:tagbar_iconchars = ["\u25b8", "\u25be"]

  let g:airline_powerline_fonts = 1
  let g:airline#extensions#tabline#close_symbol = "\u00d7"
  let g:airline#extensions#promptline#snapshot_file = '~/.shell_prompt.sh'
  let g:airline#extensions#promptline#enabled = 1

  let g:promptline_symbols = {
        \ 'left' : "\ue0b0",
        \ 'right' : "\ue0b2",
        \ 'left_alt' : "\ue0b1",
        \ 'right_alt' : "\ue0b3",
        \ 'dir_sep' : " \ue0b1 ",
        \ 'truncation' : '...',
        \ 'vcs_branch' : "\ue0a0 ",
        \ 'space' : ' '}
endif
