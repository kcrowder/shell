#!/bin/bash
#
# by: keith crowder
# date: 05.09.2013
# purpose: install nvidia drive
# source: http://crunchbang.org/forums/viewtopic.php?id=19332
#
sudo invoke-rc.d slim stop

sudo apt-get install module-assistant nvidia-kernel-common

sudo m-a auto-install nvidia-kernel-source

sudo apt-get install nvidia-glx

sudo cp -p /etc/X11/xorg.conf /etc/X11/xorg.conf.bak

sudo apt-get install nvidia-xconfig nvidia-settings

sudo nvidia-xconfig

sudo invoke-rc.d slim restart
#
# end of program
#
