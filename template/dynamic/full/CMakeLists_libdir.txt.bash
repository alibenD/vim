#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2019-01-11 16:02:48
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`
PROJECT_NAME=$1

#---Shell Command
cat << EOF
#---Automatically Generated from template 'CMakeList.txt' wrote by @aliben---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: aliben.develop@gmail.com
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

FILE(GLOB_RECURSE HEADERS
  ../include/$PROJECT_NAME/*/*.h*
  ../include/$PROJECT_NAME/*.h*
  )
FILE(GLOB_RECURSE SOURCES *.cc)

ADD_LIBRARY($PROJECT_NAME SHARED \${HEADERS} \${SOURCES})
#TARGET_LINK_LIBRARIES($PROJECT_NAME \${THIRD_PARTY_LIBS})
EOF
