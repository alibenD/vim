#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) 2018 All rights reserved.
# @name: cmakelists.bash
# @author: aliben.develop@gmail.com
# @created_date: 2018-01-31 13:47:34
# @last_modified_date: 2018-01-31 14:20:59
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`

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

# Cmake version required
cmake_minimum_required(VERSION 2.8)

#project name
project(NEED_TO_FILL)

# Set Dependence PATH

# Find *Config.cmake
  # Example find_package(OpenCV REQUIRED)

# EXECUTABLE

# TARGET LINK

EOF
