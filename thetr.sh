#!/bin/bash
#
# inspiration: http://www.cyberciti.biz/faq/linux-unix-shell-programming-converting-lowercase-uppercase/
# date: 04.24.2011
# by: keith crowder
# hacked: for changing filenames to all lowercase
#
# get filename
echo -n "Enter File Name : "
read fileName
 
# make sure file exits for reading
if [ ! -f $fileName ]; then
  echo "Filename $fileName does not exists"
  exit 1
fi
 
# convert uppercase to lowercase using tr command NOT USED
# tr '[A-Z]' '[a-z]' < $fileName
#
# my hack -> convert file names from uppercase to lowercase using mv, echo, tr
mv $fileName `echo $fileName | tr "[:upper:]" "[:lower:]"`
#
# end of program
#
