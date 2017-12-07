#!/usr/bin/bash
#
# date: 12.04.2017
# by: keith crowder
# name: vmTools.v2.sh
# purpose: to automate installation of vmware tools.
# note: adding conditionals because you never know
#
#
if rpm -qa | grep open-vm-tools 
then
	printf "Removing open-vm-tools...\n";
	yum -y remove "open-vm-tools*"
    printf "The open-vm-tools package was removed."
else
	printf "The package open-vm-tools not installed. \n";
fi
/usr/bin/sleep 1
#
printf "Make a path: \n";
/usr/bin/mkdir -pv /mnt/cdrom
if [ "$?" != 0 ]
then
    echo "Mount creation ''/mnt/cdrom' has failed."
    exit 1
fi
/usr/bin/sleep 1
#
printf "Mount the CDROM: \n";
/usr/bin/mount /dev/cdrom /mnt/cdrom
if [ "$?" != 0 ]
then
    echo "Mounting '/dev/cdrom' to '/mnt/cdrom' has failed."
    exit 1
fi
/usr/bin/sleep 1
#
printf "Extract the script and relevant files: \n";
tar xfz /mnt/cdrom/VMwareTools*.gz -C /tmp
if [ "$?" != 0 ]
then
    echo "Tar failed, check the syntax."
    exit 1
fi
/usr/bin/sleep 1
#
printf "Creating the answers file: \n";
cat > /tmp/answer$$ << __ANSWER__
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
/usr/bin/sleep 1
#
printf "Running the script: \n";
/usr/bin/perl /tmp/vmware-tools-distrib/vmware-install.pl < /tmp/answer$$
if [ "$?" != 0 ]
then
    echo "vmware tools failed to install."
    exit 1
fi
/usr/bin/sleep 1
#
printf "Verify that the process is running: \n";
/usr/bin/ps aux | grep -i vmtool | grep -v grep
if [ "$?" != 0 ]
then
    echo "vmtools process not found"
    exit 1
fi
/usr/bin/sleep 1
#
#
printf "Done. \n";
/usr/bin/sleep 1
# 
# end of program
#
