let g:fern#renderer#default#leading = "  "
let g:fern#renderer#default#leaf_symbol = "  "
let g:fern#renderer#default#collapsed_symbol = "+ "
let g:fern#renderer#default#expanded_symbol = "- "
let g:fern#drawer_width = 40

function! s:init_fern() abort
  nmap <buffer><expr> <2-LeftMouse>
  \ fern#smart#leaf(
  \   "\<Plug>(fern-action-open)",
  \   "\<Plug>(fern-action-expand)",
  \   "\<Plug>(fern-action-collapse)",
  \ )
endfunction

augroup fern
  autocmd FileType fern call s:init_fern()
augroup END
