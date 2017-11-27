#!/bin/bash
# testing file output for script intial debian install
# by: keith crowder
# 05.05.2013
#
cat > /etc/apt/sourcefile.txt << EOF
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
# end of program
#
