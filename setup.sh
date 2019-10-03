#!/bin/bash

# Notes:
# This dot.sh is heavily inspired by that of git usr 2KAbhishek
# https://github.com/2KAbhishek/Dotfiles

# Opening statements
echo -e "\u001b[32;1mSetting up Dotfiles...\u001b[0m"

# Back up existing files
echo -e "\u001b[33;1m Backing up existing files... \u001b[0m"
mv -iv ~/.xsession ~/.xsession.old
mv -iv ~/.vimrc ~/.vimrc.old
mv -iv ~/.bashrc ~/.bashrc.old
mv -iv ~/suckless/dwm/config.h ~/suckless/dwm/config.h.old
mv -iv ~/suckless/st/config.h ~/suckless/st/config.h.old

# Create symbolic links
echo -e "\u001b[36;1mAdding symlinks...\u001b[0m"
ln -sfnv $PWD/.xsession ~/.xsession
ln -sfnv $PWD/.vimrc ~/.vimrc
ln -sfnv $PWD/.bashrc ~/.bashrc
ln -sfnv $PWD/suckless/dwm/config.h ~/suckless/dwm/config.h
ln -sfnv $PWD/suckless/st/config.h ~/suckless/st/config.h

# Finishing statements
echo -e "\u001b[32;1m Completed. \u001b[0m"
