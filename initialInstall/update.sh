#!/bin/bash
#
# this is the final update script for initial debian installs
# by: keith crowder
# 05.05.2013
#
cat > /etc/apt/sources.list << EOF
deb http://ftp.us.debian.org/debian/ squeeze main
deb-src http://ftp.us.debian.org/debian/ squeeze main
deb http://security.debian.org/ squeeze/updates main
deb-src http://security.debian.org/ squeeze/updates main

# squeeze-updates, previously known as 'volatile'
deb http://ftp.us.debian.org/debian/ squeeze-updates main
deb-src http://ftp.us.debian.org/debian/ squeeze-updates main

## Debian – Stable
deb http://ftp.us.debian.org/debian/ stable main contrib non-free
deb-src http://ftp.us.debian.org/debian/ stable main contrib non-free

## Security Updates
deb http://security.debian.org/ stable/updates main contrib non-free
deb-src http://security.debian.org/ stable/updates main contrib non-free

## Multimedia
deb http://www.deb-multimedia.org stable main non-free
deb http://www.deb-multimedia.org squeeze main non-free
deb http://backports.debian.org/debian-backports squeeze-backports main
deb http://mozilla.debian.net/ squeeze-backports iceweasel-release

deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main
EOF
#
# Adding your repositories keys for the above source.list:
#
gpg --keyserver pgpkeys.mit.edu --recv-key 07DC563D1F41B907
gpg -a --export 07DC563D1F41B907 | apt-key add - 
gpg --keyserver keys.gnupg.net --recv-key 06C4AE2A
gpg -a --export 06C4AE2A | apt-key add -
#
# Time to update the entire system and upgrade everything and reboot until no more updates are available after rebooting.
#
apt-get update
apt-get upgrade
apt-get dist-upgrade
apt-get autoremove
