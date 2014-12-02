let mapleader = ','
let g:mapleader = ','

let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_omni_patterns = {}
let g:neocomplcache_omni_patterns.python = ''

let g:syntastic_python_checkers = ['python']

let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0

let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = '~'
let g:gitgutter_sign_removed = '_'
let g:gitgutter_sign_modified_removed = '!'

let g:NERDTreeMinimalUI = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'tab': {
      \   'active': [ 'filename', 'modified' ],
      \   'inactive': [ 'filename', 'modified' ] },
      \ 'subseparator': { 'left': '', 'right': '' }
      \ }
