#!/bin/sh
#---Generated from template 'sh' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @file: auto_install.sh
# @author: aliben.develop@gmail.com
# @created_date: 2018-11-20 21:08:35
# @last_modified_date: 2018-11-20 21:15:57
# @brief: TODO
# @details: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
#brew install vim --with-python --with-ruby --with-perl --with-features=huge --with-lua
vim +PlugInstall +qall
python ./bundle/YouCompleteMe/install.py --clang-completer
ln -s ./.vimrc8 $HOME/.vimrc
