#!/bin/bash
#
# by: keith crowder
# source: 
# date: 04.28.2012
# purpose: move file names to lowercase then remove spaces
#
for f in *; do
     file=$(echo $f | tr A-Z a-z | tr ' ' _)
     [ ! -f $file ] && mv "$f" $file
done
#
# end of program
#
