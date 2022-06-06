map <silent> gd <Plug>(coc-definition)
map <silent> gi <Plug>(coc-implementation)
map <silent> gr <Plug>(coc-references)

map <leader>rn <Plug>(coc-rename)
map <leader>f <Plug>(coc-format)
map <leader>a <Plug>(coc-codeaction-selected)
map <leader>qf <Plug>(coc-fix-current)
map <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<cr>

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
map <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
map <silent> K :call ShowDocumentation()<cr>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
