#!/bin/bash
#---Generated from template 'bash' wrote by @aliben---
# 
# @name: bashnew.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-10-21 17:42:35
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: Generate a template for new bash file
#---***********************************************---


#---Variables
CREATED_TIME=`date '+%Y-%m-%d %H:%M:%S'`
CREATED_YEAR=`date '+%Y'`


#---Shell Command
cat << EOF
#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) $CREATED_YEAR All rights reserved.
# @name: ${1##*/}
# @author: aliben.develop@gmail.com
# @created_date: $CREATED_TIME
# @last_modified_date: NO_LAST_MODIFIED_DATE
# @description: TODO
#---***********************************************---


#---Variables
CREATED_TIME=\`date '+%Y-%m-%d %H:%M:%S'\`
CREATED_YEAR=\`date '+%Y'\`

#---Shell Command
EOF
