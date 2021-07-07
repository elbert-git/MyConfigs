#!/bin/bash

#copy vim config file and folders to this directory
cp ~/.vimrc ./.vimrc

#copy doom emacs config file and folders to this directory
cp -rf ~/.doom.d  ./.doom.d

#copy tmux config file to this directory
cp ~/.tmux.conf ./.tmux.conf

#git commit save
git add .
git commit -m $1
git push
