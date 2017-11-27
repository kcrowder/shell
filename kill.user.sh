#!/bin/bash
#
# by: keith crowder
# kill user
#
while true
> do
> kill -9 $(ps aux | grep username | awk '{ print $2 }' )
> sleep 2
> done
#
# end of program
#
