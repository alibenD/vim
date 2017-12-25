#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: h.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:14:10
# @last_modified_date: 2017-10-23 01:33:41
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
HEAD_DEF=`echo _${1##*/}__ | tr "a-z.-" "A-Z__"`
FILE_NAME=`echo ${1##*/}`

#---Shell Command
cat << EOF
/**-----------------------------------------------
  * @Copyright (C) $CREATED_YEAR All rights reserved.
  * @filename: ${1##*/}
  * @version: v0.0.1
  * @author: aliben.develop@gmail.com
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  * @description: TODO
  *-----------------------------------------------*/

#ifndef $HEAD_DEF
#define $HEAD_DEF

#endif // $HEAD_DEF
EOF
