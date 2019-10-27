let g:coc_global_extensions = ['coc-tsserver', 'coc-json', 'coc-html', 'coc-css', 'coc-highlight', 'coc-git', 'coc-prettier', 'coc-explorer']

map gd <Plug>(coc-definition)
map gy <Plug>(coc-type-definition)
map gi <Plug>(coc-implementation)
map gr <Plug>(coc-references)

map <leader>a :CocList diagnostics<cr>
map <leader>e :CocList extensions<cr>

map <leader>f <Plug>(coc-format)
