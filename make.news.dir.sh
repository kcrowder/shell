#!/bin/bash
#
# date: 01.19.2013
# by: keith crowder
# purpose: make news directories for the news archive
#
printf "today, we'll make a months worth of directories for the news archive...\n"
printf "please enter a name of the month: \n"
sleep 5s;							# gives the illusion of a delay ;)
read name							# the name of the month
#
printf "please enter the month number: \n"
read month							# the month needed
#
printf "please enter the year number: \n"
read year							# the year needed
#
mkdir -v "$month"."$name"."$year"				# create month path
cd "$month"."$name"."$year"					# cd to new month
#
# the follow numbers are potential days of the month
numbers="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31"
# the loop
for i in `echo $numbers`
do
mkdir -v "$month"."$i"."$year"
done
#
# end of program
#
