#!/bin/bash

#copy vim config file and folders to home directory
cp  ./.vimrc ~/.vimrc

#copy doom emacs config file and folders to home directory
cp ./doomConfigs/config.el ~/.doom.d/config.el
cp ./doomConfigs/init.el ~/.doom.d/init.el
cp ./doomConfigs/packages.el ~/.doom.d/packages.el

#copy tmux config file to home directory
cp ./.tmux.conf ~/.tmux.conf

