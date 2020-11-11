#!/bin/bash

#copy vim config file and folders
cp ~/.vimrc ./.vimrc
cp ~/.vim ./.vim

#copy emacs config file and folders
cp ~/.emacs ./.emacs
cp ~/.emacs.d ./.emacs.d

#copy tmux config file
cp ~/.tmux.conf ./.tmux.conf

git add .
git commit -m "updated configs"
git push
