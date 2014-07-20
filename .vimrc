execute 'source ~/.vim/plugin.vim'
execute 'source ~/.vim/variable.vim'
execute 'source ~/.vim/normal.vim'
execute 'source ~/.vim/appearance.vim'

if !has('win32')
  execute 'source ~/.vim/unix.vim'
endif
