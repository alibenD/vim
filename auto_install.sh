#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: auto_install.sh
# @author: aliben.develop@gmail.com
# @created_date: 2018-11-20 21:08:35
# @last_modified_date: 2019-05-24 09:20:05
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
#brew install vim --with-python --with-ruby --with-perl --with-features=huge --with-lua
set -x
if [ -f "$HOME/.vimrc" ]; then
  mv $HOME/.vimrc $HOME/.vimrc_old
fi
ln -s $HOME/.vim/vimrc8 $HOME/.vimrc
vim +PlugInstall +qall
cd bundle/YouCompleteMe/ && git submodule update --init --recursive
cd ~/.vim
python ./bundle/YouCompleteMe/install.py --clang-completer
