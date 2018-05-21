#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: cpp.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:01:33
# @last_modified_date: 2018-05-21 20:00:59
# @brief: Generate a template for a new cpp
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command

cat << EOF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @author: aliben.develop@gmail.com
  * @brief: TODO
  * @version: v0.0.1
  * @file: ${1##*/}
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  *-----------------------------------------------*/

//INCLUDE

//CODE
EOF
