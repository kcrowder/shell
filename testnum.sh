#!/bin/bash
#
# by: keith crowder
# date: 01.24.2010
# from: http://bash.cyberciti.biz/guide/If..else..fi
# script name: testnum.sh
#
read -p "Enter a password" pass
if test "$pass" = "jerry"
then
     echo "Password verified."
else
     echo "Access denied."	
fi
#
# end of program
#
