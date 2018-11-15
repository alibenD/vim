#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: hello_world.cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:01:33
# @last_modified_date: 2018-11-13 16:04:14
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
PROJECT_NAME=$1

#---Shell Command

cat << EOF
/**-----------------------------------------------
  * @Copyright (C) All rights reserved.
  * @filename: ${1##*/}
  * @author: aliben.develop@gmail.com
  * @created_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @description: TODO
  *-----------------------------------------------*/

//INCLUDE
#include <iostream>

//CODE

int print_hello();
EOF
