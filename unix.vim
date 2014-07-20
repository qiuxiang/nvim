NeoBundle 'edkolev/promptline.vim'

let g:tagbar_iconchars = ['▸', '▾']

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#close_symbol = '×'
let g:airline#extensions#promptline#snapshot_file = '~/.shell_prompt.sh'
let g:airline#extensions#promptline#enabled = 1

let g:promptline_symbols = {
      \ 'left' : '',
      \ 'right' : '',
      \ 'left_alt' : '',
      \ 'right_alt' : '',
      \ 'dir_sep' : '  ',
      \ 'truncation' : '...',
      \ 'vcs_branch' : ' ',
      \ 'space' : ' '}
