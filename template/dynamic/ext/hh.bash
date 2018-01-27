#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) %CREATED_YEAR All rights reserved.
# @name: hh.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 01:41:17
# @last_modified_date: 2018-01-25 15:05:14
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
HEAD_DEF=`echo __${1##*/}__ | tr "a-z.-" "A-Z__"`

#---Shell Command
cat << EOF
#ifndef $HEAD_DEF
#define $HEAD_DEF
/**
  * @Copyright Dorabot Inc.
  * @date: $CREATED_YEAR
  * @author: kaiwen.hu@dorabot.com
  * @brief: TODO

  * @filename: ${1##*/}
  * @version: v0.0.1
  * @create_date: $CREATED_TIME
  * @last_modified_date: NO_LAST_MODIFIED_DATE
  */

// Header include

// Declaration
#endif // $HEAD_DEF
EOF
