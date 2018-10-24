#!/bin/bash
#
# date: 06.13.2016
# purpose: add users quickly
# by: keith crowder
#
#
# notes; update 07/11/2018 with exit conditional
#
printf "Enter a First and Last name: \n"
read FullName
printf "\n"
sleep 1
printf "Enter a username: \n"
read Username
printf "\n"
sleep 1
/usr/sbin/useradd -m -d /home/$Username -c "$FullName" -s /bin/bash $Username
if [ "$?" != 0 ]
then
    echo user: $Username exists, exiting script now...
    exit 1
fi
printf "\n"
/usr/bin/passwd $Username 
sleep 1
/usr/bin/chage -d 0 $Username
printf "\n"
sleep 1
id $Username
printf "\n"
printf "Done.\n"
#
# end of program
#
