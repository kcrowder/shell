#!/bin/bash
#
# purpose: to install all desired packages in one step, for debian based-linux desktop distros
# date: 05.11.2013
# by: keith crowder
#
# sources that helped me write this script: 
# http://www.cyberciti.biz/faq/bash-shell-script-function-examples/
#

debian(){						# for debian only
./debianInstall.sh
}

ubuntu(){						# for ubuntu only
./ubuntuInstall.sh
}

crunch(){						# for crunchbang only
./crunchInstall.sh
}

lsb_release='/usr/bin/lsb_release'			# variable for lsb_release, we may not even need this
#
if $lsb_release -d | grep -i ubuntu > /dev/null
then
	echo "yes";ubuntu()
elif
	if $lsb_release -d | grep -i debian > /dev/null
	echo "yes";debian()
elif
	if $lsb_release -d | grep -i crunch > /dev/null
	echo "yes";crunch()
else
	echo "no";exit
fi
#
# or this method
#
#if cat /proc/version | grep -i ubuntu > /dev/null
#then
#	echo "yes"
#else 
#	echo "no"
#fi
#
# or this method
#
#if uname -v | grep -i ubuntu > /dev/null
#then
#	echo "yes"
#else
#	echo "no"
#fi

