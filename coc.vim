map gd <Plug>(coc-definition)
map gi <Plug>(coc-implementation)
map gr <Plug>(coc-references)

map <leader>oi :call CocAction('runCommand', 'editor.action.organizeImport')<cr><Plug>(coc-format)
map <leader>rn <Plug>(coc-rename)
map <leader>qf <Plug>(coc-fix-current)
map <leader>f <Plug>(coc-format)
map <leader>a <Plug>(coc-codeaction-cursor)

map <silent> K :call ShowDocumentation()<cr>
function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction
