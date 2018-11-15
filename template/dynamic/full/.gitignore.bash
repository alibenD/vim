#!/bin/bash

#---Automatically Generated from template 'bash' wrote by @aliben---
# @Copyright (C) %CREATED_YEAR All rights reserved.
# @name: gitignore.bash
# @author: aliben.develop@gmail.com
# @created_date: 2017-11-01 18:18:27
# @last_modified_date: 2018-11-13 16:58:51
# @description: TODO
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

#IGNORE LIST
build
bin
lib
doc
*.swo
*.swp
*.o
*.a
.idea


#DON NOT IGNORE LIST

EOF

