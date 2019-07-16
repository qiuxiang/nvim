```shell
pip install pynvim

# vim
git clone https://github.com/qiuxiang/.vim.git ~/.vim
echo "source ~/.vim/init.vim" > ~/.vimrc

# nvim
git clone https://github.com/qiuxiang/.vim.git ~/.config/nvim

vi -c "PlugInstall"
vi -c "CocInstall coc-json coc-css coc-highlight coc-html coc-tsserver coc-git"
```

.tmux.conf:
```shell
set -sg escape-time 10
```
