#!/bin/bash
#
# And for the rest of you diehard Firefox fans that still want Firefox instead of Ice Weasel (they are identical to each other in every way except branding) here is how you install the latest Firefox in Debian:
apt-get remove iceweasel
echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
apt-get update
apt-get install firefox-mozilla-build
