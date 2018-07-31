#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 00:01:59
# @last_modified_date: 2018-07-31 22:37:00
# @brief: Generate a template for new bash file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
/**
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @date: $CREATED_YEAR
  * @file: ${1##*/}
  * @version: v0.0.1
  * @author: aliben.develop@gmail.com
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @brief: TODO
  * @details: TODO
  */

//INCLUDE

//CODE
EOF
