#!/usr/bin/env bash
#
# date: 12.04.2017
# by: keith crowder
# name: vmTools.v2.sh
# purpose: to automate installation of vmware tools.
# version 2.1
#
printf "We'll need to set command variables...\n";
#
printf "Setting 'sleep' Variable: \n";
SLEEP=`which sleep`
echo $SLEEP
$SLEEP 1
#
printf "Setting 'mkdir' Variable: \n";
$SLEEP 1
MKDIR=`which mkdir`
echo $MKDIR
#
printf "Setting 'mount' Variable: \n";
$SLEEP 1
MOUNT=`which mount`
echo $MOUNT
#
printf "Setting 'ps aux' Variable: \n";
$SLEEP 1
PSAUX=`which ps`
echo $PSAUX
#
printf "Setting 'cat' Varaiable: \n";
$SLEEP 1
CAT=`which cat`
echo $CAT
#
printf "Setting 'tar' Variable: \n";
$SLEEP 1
TAR=`which tar`
echo $TAR
#
printf "Setting 'rpm' Variable: \n";
$SLEEP 1
RPM=`which rpm`
echo $RPM
#
printf "Setting 'yum' Variable: \n";
$SLEEP 1
YUM=`which yum`
echo $YUM
#
# note: adding conditionals because you never know
#
#
if $RPM -qa | grep open-vm-tools 
then
	printf "Removing open-vm-tools...\n";
	$YUM -y remove "open-vm-tools*"
    printf "The open-vm-tools package was removed."
else
	printf "The package open-vm-tools not installed. \n";
fi
$SLEEP 1
#
printf "Make a path: \n";
$MKDIR -pv /mnt/cdrom
if [ "$?" != 0 ]
then
    echo "Mount creation ''/mnt/cdrom' has failed."
    exit 1
fi
$SLEEP 1
#
printf "Mount the CDROM: \n";
$MOUNT /dev/cdrom /mnt/cdrom
if [ "$?" != 0 ]
then
    echo "Mounting '/dev/cdrom' to '/mnt/cdrom' has failed.";
    exit 1
fi
$SLEEP 1
#
printf "Extract the script and relevant files: \n";
$TAR xfz /mnt/cdrom/VMwareTools*.gz -C /tmp
if [ "$?" != 0 ]
then
    echo "Tar failed, check the syntax."
    exit 1
fi
$SLEEP 1
#
printf "Creating the answers file: \n";
$CAT > /tmp/answer$$ << __ANSWER__
yes
/usr/bin
/etc/rc.d
/etc/rc.d/init.d
/usr/sbin
/usr/lib/vmware-tools
yes
/usr/lib
/var/lib
/usr/share/doc/vmware-tools
yes
yes
no
no
no
yes
yes
__ANSWER__
$SLEEP 1
#
printf "Running the script: \n";
/usr/bin/perl /tmp/vmware-tools-distrib/vmware-install.pl < /tmp/answer$$
if [ "$?" != 0 ]
then
    echo "vmware tools failed to install."
    exit 1
fi
$SLEEP 1
#
printf "Verify that the process is running: \n";
$PSAUX aux | grep -i vmtool | grep -v grep
if [ "$?" != 0 ]
then
    echo "vmtools process not found"
    exit 1
fi
$SLEEP 1
#
#
printf "Done. \n";
$SLEEP 1
# 
# end of program
#
