let mapleader = ','
let g:mapleader = ','

let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_auto_select = 1

let g:syntastic_python_checkers = ['python']

let g:vim_json_syntax_conceal = 0

let g:NERDTreeMinimalUI = 1
let g:netrw_banner = 0
let g:netrw_liststyle = 3

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'tab': {
      \   'active': [ 'filename', 'modified' ],
      \   'inactive': [ 'filename', 'modified' ] },
      \ 'subseparator': { 'left': '', 'right': '' } }
