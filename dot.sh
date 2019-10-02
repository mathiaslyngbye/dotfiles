#!/bin/bash

# Notes:
# This dot.sh is heavily inspired by that of git usr 2KAbhishek
# https://github.com/2KAbhishek/Dotfiles

# Opening statements
echo -e "\u001b[32;1mSetting up Dotfiles...\u001b[0m"

# Back up existing files
o -e "\u001b[33;1m Backing up existing files... \u001b[0m"
mv -iv ~/.Xresources ~/.Xresources.old
mv -iv ~/.xsession ~/.xsession
mv -iv ~/.vimrc ~/.vimrc.old

# Create symbolic links
echo -e "\u001b[36;1mAdding symlinks...\u001b[0m"
ln -sfnv $PWD/.Xresources ~/.Xresources
ln -sfnv $PWD/.xsession ~/.xsession
ln -sfnv $PWD/.vimrc ~/.vimrc

# Finishing statements
echo -e "\u001b[32;1m Completed. \u001b[0m"
