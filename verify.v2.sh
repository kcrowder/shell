#!/usr/bin/bash
# this is the copy
# verify user, then chmod files with extension .cgi
# by keith crowder
# date: 12-07-2008
# updated: 01.14.2010
# 
# project complete, updated using case
# 
echo "please enter a username:"
read user
# verify user
if id $user | grep "^uid" > /dev/null
then
   echo "this user has permission, proceed"
else
   echo "this user does not have permission, access denied!"
exit
fi
# note options
   echo "executable or non-executable?"
   echo "to make files executable, choose option 1"
   echo "for non-executable, choose option 2"
   echo "to exit, choose option 3"
# read input from command line
read option
# encased in case, hehe
case $option in
   1) chmod +x *.cgi ;;
   2) chmod -x *.cgi ;;
   3) exit
esac
#
# end of program
#
