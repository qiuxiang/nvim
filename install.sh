#!/usr/bin/env bash

git clone --recursive https://github.com/qiuxiang/.vim ~/.vim && cp ~/.vim/.{g,}vimrc ~/ && vim -c :NeoBundleInstall
