#!/usr/bin/env bash

git clone --recursive http://github.com/qiuxiang/.vim ~/.vim
cp ~/.vim/.{g,}vimrc ~/
vim -c :NeoBundleInstall
