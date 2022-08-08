map gd <Plug>(coc-definition)
map gi <Plug>(coc-implementation)
map gr <Plug>(coc-references)

map <leader>oi :call CocAction('runCommand', 'editor.action.organizeImport')<cr><Plug>(coc-format)
map <leader>rn <Plug>(coc-rename)
map <leader>f <Plug>(coc-format)
map <leader>a <Plug>(coc-codeaction-cursor)

" Use K to show documentation in preview window.
map <silent> K :call ShowDocumentation()<cr>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction


" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
