#!/bin/bash

#copy vim config file and folders
cp  ./.vimrc ~/.vimrc

#copy doom emacs config file and folders
cp -rf ./doom.d ~/.doom.d

#copy tmux config file
cp ./.tmux.conf ~/.tmux.conf

