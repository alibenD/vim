#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: cpp.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:01:33
# @last_modified_date: 2017-10-23 01:38:39
# @description: Generate a template for a new cpp
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command

cat << EOF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @filename: ${1##*/}
  * @author: aliben.develop@gmail.com
  * @created_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @description: TODO
  *-----------------------------------------------*/

//INCLUDE

//CODE
EOF
