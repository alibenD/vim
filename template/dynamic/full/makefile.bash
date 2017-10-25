#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) %CREATED_YEAR All rights reserved.
# @name: makefile.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-23 10:37:14
# @last_modified_date: 2017-10-24 15:31:44
# @description: Generate a template for a new makefile
#---***********************************************---


#----------------------------------------------------------------------
#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

SOURCE_POSTFIX=`echo $(ls ./src| head -1)`
SOURCE_POSTFIX=${SOURCE_POSTFIX#*.}
HEAD_POSTFIX=`echo $(ls ./include | head -1)`
HEAD_POSTFIX=${HEAD_POSTFIX#*.}

SOURCE_DIR="./src/"
INCLUDE_DIR="./include/"
BUILD_DIR="./build/"
OBJECT_DIR=$BUILD_DIR"obj/"
BINARY_DIR=$BUILD_DIR"bin/"

SOURCE_FILE_LIST=`echo ${SOURCE_DIR}*.${SOURCE_POSTFIX}`
INCLUDE_FILE_LIST=`echo ${INCLUDE_DIR}*.${HEAD_POSTFIX}`
OBJECT_BUILD_FILE_LIST=`echo ${OBJECT_DIR}*.o`
BINARY_BUILD_FILE_LIST=`echo ${BINARY_DIR}*`

SOURCE_LIST=`echo $(ls $SOURCE_DIR)`
INCLUDE_LIST=`echo $(ls $INCLUDE_DIR)`
OBJECT_LIST=`echo $(ls $SOURCE_DIR | sed 's/\.'$SOURCE_POSTFIX'/\.o/g')`

TARGET_OBJECT_LIST=`echo ${SOURCE_LIST}| sed 's/src/build\/obj/g' |sed 's/\.'$SOURCE_POSTFIX'/\.o/g' `
TARGET_BIN_LIST=`echo ${SOURCE_LIST}| sed 's/src/build\/bin/g' |sed 's/\.'$SOURCE_POSTFIX'//g' `

#----------------------------------------------------------------------

#---Shell Command
cat << EOF
#---Automatically Generated from template 'makefile' wrote by @aliben---
#
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @filename: ${1##*/}
# @author: aliben.develop@gmail.com
# @create_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---****************************************************************---

#----------------------------------------------------------------------
#VARIABLE
  #TEST
    HEAD_POSTFIX=$HEAD_POSTFIX
    SOURCE_POSTFIX=$SOURCE_POSTFIX

  #COMPILER
    CC=gcc
  #COMPILER_FLAG
    CCFLAG=-Wall
    INCLUDEFLAG=-I${INCLUDE_DIR}

  #DIRECTORY
    SOURCE_DIR=$SOURCE_DIR
    INCLUDE_DIR=$INCLUDE_DIR
    BUILD_DIR=$BUILD_DIR
    OBJECT_DIR=$OBJECT_DIR
    BINARY_DIR=$BINARY_DIR

  #SOURCE_LIST
    SOURCE_LIST=$SOURCE_LIST
    INCLUDE_LIST=$INCLUDE_LIST
    OBJECT_LIST=$OBJECT_LIST

  #FILE_LIST
    SOURCE_FILE_LIST=$SOURCE_FILE_LIST
    INCLUDE_FILE_LIST=$INCLUDE_FILE_LIST
    OBJECT_BUILD_FILE_LIST=$OBJECT_BUILD_FILE_LIST
    BINARY_BUILD_FILE_LIST=`echo ${BINARY_DIR}*`

#----------------------------!!!!!!!-----------------------------
#---This field should be set while you created your program
  #TARGET_LIST
    TARGET_OBJECT_LIST=$TARGET_OBJECT_LIST
    TARGET_BIN_LIST=$TARGET_BIN_LIST

  #DEPEND_LIST
    DEP=
#----------------------------!!!!!!!-----------------------------

  #VPATH

#MAKE_KEYWORD
  vpath %.h $INCLUDE_DIR
  vpath %.hh $INCLUDE_DIR
  vpath %.hpp $INCLUDE_DIR
  vpath %.hxx $INCLUDE_DIR

  vpath %.c $SOURCE_DIR
  vpath %.cc $SOURCE_DIR
  vpath %.cpp $SOURCE_DIR
  vpath %.cxx $SOURCE_DIR

#----------------------------------------------------------------------
#TARGET

all: all_obj \$(TARGET_BIN_LIST)

all_obj: \$(TARGET_OBJECT_LIST)

\$(TARGET_OBJECT_LIST): %.o : %.c
	\$(CC) \$(CCFLAG) -o \$(OBJECT_DIR)\$@ -c \$< \$(INCLUDEFLAG)

\$(TARGET_BIN_LIST): %: %.o 
	\$(CC) \$(CCFLAG)  -o \$(BINARY_DIR)\$@ \$(OBJECT_DIR)\$<  \$(OBJECT_DIR)\$(DEP) \$(INCLUDEFLAG)

.PHONY: clean

clean:
	rm `echo '${OBJECT_BUILD_FILE_LIST}'`
	rm `echo '${BINARY_BUILD_FILE_LIST}'`
EOF
