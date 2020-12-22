set updatetime=500

let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-highlight', 'coc-git', 'coc-prettier', 'coc-explorer']

map gd <Plug>(coc-definition)
map gy <Plug>(coc-type-definition)
map gi <Plug>(coc-implementation)
map gr <Plug>(coc-references)

map <leader>rn <Plug>(coc-rename)
map <leader>f <Plug>(coc-format)
map <leader>o :call CocAction('runCommand', 'editor.action.organizeImport')<cr>

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Apply AutoFix to problem on the current line.
nmap <leader>qf <Plug>(coc-fix-current)

" Applying codeAction to the selected region.
map <leader>a <Plug>(coc-codeaction-selected)

" Show all diagnostics.
nnoremap <silent><nowait> <space>a :<C-u>CocList diagnostics<cr>
" Manage extensions.
nnoremap <silent><nowait> <space>e :<C-u>CocList extensions<cr>
" Find symbol of current document.
nnoremap <silent><nowait> <space>o :<C-u>CocList outline<cr>

hi! link CocExplorerGitContentChange Statement
