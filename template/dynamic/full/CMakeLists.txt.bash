#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2018-01-31 14:46:58
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

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

# Cmake version required
cmake_minimum_required(VERSION 2.8)

#project name
project(NEED_TO_FILL)

# Set Dependence PATH
  # Example: set ( PACKAGE_DIR PATH )

# Find *Config.cmake
  # Example: find_package(OpenCV REQUIRED)

# EXECUTABLE
  # Example: add_executable( EXEC_NAME SRC_FILE_NAME_LIST )

# TARGET LINK
  # Example: target_link_libraries( EXEC_NAME LIBPATH ) ...LIB_PATH e.g. \${OPENCV_LIBS}

EOF
