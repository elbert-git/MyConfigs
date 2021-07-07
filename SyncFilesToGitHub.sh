#!/bin/bash

#copy vim config file and folders to this directory
cp ~/.vimrc ./.vimrc

#copy doom emacs config file and folders to this directory
cp ~/.doom.d/config.el ./doomConfigs/config.el
cp ~/.doom.d/init.el ./doomConfigs/init.el
cp ~/.doom.d/packages.el ./doomConfigs/packages.el

#copy tmux config file to this directory
cp ~/.tmux.conf ./.tmux.conf

#git commit save
git add .
git commit -m $1
git push
