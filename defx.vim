function! s:defx_settings()
  nnoremap <silent><buffer><expr> <CR> defx#do_action('open')
  nnoremap <silent><buffer><expr> <BS> defx#do_action('cd', ['..'])
  nnoremap <silent><buffer><expr> c    defx#do_action('copy')
  nnoremap <silent><buffer><expr> m    defx#do_action('move')
  nnoremap <silent><buffer><expr> p    defx#do_action('paste')
  nnoremap <silent><buffer><expr> o    defx#do_action('open_or_close_tree')
  nnoremap <silent><buffer><expr> O    defx#do_action('open_tree_recursive')
  nnoremap <silent><buffer><expr> t    defx#do_action('drop', 'tabnew')
  nnoremap <silent><buffer><expr> a    defx#do_action('new_file')
  nnoremap <silent><buffer><expr> A    defx#do_action('new_directory')
  nnoremap <silent><buffer><expr> d    defx#do_action('remove_trash')
  nnoremap <silent><buffer><expr> D    defx#do_action('remove')
  nnoremap <silent><buffer><expr> r    defx#do_action('rename')
  nnoremap <silent><buffer><expr> x    defx#do_action('execute_system')
  nnoremap <silent><buffer><expr> .    defx#do_action('toggle_ignored_files')
  nnoremap <silent><buffer><expr> ~    defx#do_action('cd')
  nnoremap <silent><buffer><expr> s    defx#do_action('toggle_select')
endfunction
autocmd FileType defx call <SID>defx_settings()

call defx#custom#column('filename', { 'max_width': 72 })
call defx#custom#option('_', { 'columns': 'mark:git:indent:icon:filename:size:time' })

let g:defx_git#indicators = {
  \ 'Modified'  : '~',
  \ 'Staged'    : '✔',
  \ 'Untracked' : '+',
  \ 'Renamed'   : '→',
  \ 'Unmerged'  : '≈',
  \ 'Ignored'   : '☒',
  \ 'Deleted'   : '×',
  \ 'Unknown'   : '?'
  \ }
