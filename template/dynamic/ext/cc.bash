#!/bin/bash
#---Automatically Generated from template 'bash' wrote by @aliben---
# 
# @name: cc.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 00:01:59
# @last_modified_date: 2018-05-21 20:01:05
# @brief: Generate a template for new bash file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

#---Shell Command
cat << EOF
/**
  * @Copyright Dorabot Inc.
  * @date: $CREATED_YEAR
  * @author: kaiwen.hu@dorabot.com
  * @brief: TODO
  * @version: v0.0.1
  * @file: ${1##*/}
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  */

//INCLUDE

//CODE
EOF
