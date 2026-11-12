autocmd User LspSetup call LspAddServer([#{
\   name: 'tsc',
\   filetype: ['javascript', 'javascriptreact', 'typescript', 'typescriptreact'],
\   path: 'tsc',
\   args: ['--lsp', '--stdio'],
\   workspaceConfig: {
\     'js/ts': #{
\       suggest: #{
\         autoImports: v:false,
\       },
\     },
\   },
\ }])

function! s:OnLspAttached() abort
  nnoremap <buffer> <silent> gd <cmd>LspGotoDefinition<cr>
  nnoremap <buffer> <silent> gr <cmd>LspShowReferences<cr>
  nnoremap <buffer> <silent> K  <cmd>LspHover<cr>
  nnoremap <buffer> <silent> [d <cmd>LspDiag prev<cr>
  nnoremap <buffer> <silent> ]d <cmd>LspDiag next<cr>
  nnoremap <buffer> <silent> <leader>rn <cmd>LspRename<cr>
  nnoremap <buffer> <silent> <leader>ca <cmd>LspCodeAction<cr>
endfunction

autocmd User LspAttached call s:OnLspAttached()
