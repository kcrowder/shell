#!/bin/bash
#
# How to update to the latest Ice Weasel Browser (from 3.* to 17+)
apt-get install -t squeeze-backports iceweasel
apt-get dist-upgrade
apt-get autoremove
