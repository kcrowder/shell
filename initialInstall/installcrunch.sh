#!/bin/bash
#
# by: keith crowder
# date: 05.09.2013
# purpose: massive install script for crunchbang linux
#
#

##################

sudo cp -v /etc/apt/sources.list list.txt

# edit the /etc/apt/sources.list

sudo cat > /etc/apt/sources.list << EOF

## CRUNCHBANG
## Compatible with Debian Wheezy, but use at your own risk.
deb http://packages.crunchbang.org/waldorf waldorf main
#deb-src http://packages.crunchbang.org/waldorf waldorf main

## Debian
deb http://ftp.debian.org/debian/ wheezy main contrib non-free
#deb-src http://ftp.debian.org/debian/ wheezy main contrib non-free

## Multimedia
deb http://www.deb-multimedia.org wheezy main non-free

## Debian Security
deb http://security.debian.org/ wheezy/updates main
#deb-src http://security.debian.org/ wheezy/updates main

# Spotify Music
deb http://repository.spotify.com stable non-free

## Debian Stable
deb http://ftp.debian.org/debian/ stable main contrib non-free

## Sun Java 8 Plugin Script
deb http://ppa.launchpad.net/webupd8team/java/ubuntu precise main

deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main

deb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main
EOF

##################

# update the system

sudo apt-get -y install --force-yes deb-multimedia-keyring
sudo apt-get update
sudo apt-get upgrade

# firefox install

sudo apt-get remove iceweasel
sudo echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | sudo tee -a /etc/apt/sources.list > /dev/null
sudo apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
sudo apt-get update
sudo apt-get -y install --force-yes firefox-mozilla-build

#

sudo apt-get -y install --force-yes libavcodec-extra-53
wget http://www.deb-multimedia.org/pool/non-free/w/w64codecs/w64codecs_20071007-0.5_amd64.deb
dpkg -i w64codecs_20071007-0.5_amd64.deb
wget http://www.deb-multimedia.org/pool/main/libd/libdvdcss/libdvdcss2_1.2.10-0.3_amd64.deb
dpkg -i libdvdcss2_1.2.10-0.3_amd64.deb
wget http://www.deb-multimedia.org/pool/main/g/gst-plugins-ugly/gstreamer0.10-lame_0.10.17-0.0_amd64.deb
dpkg -i gstreamer0.10-lame_0.10.17-0.0_amd64.deb

sudo apt-get -y install --force-yes vlc mplayer mozilla-plugin-vlc guayadeque radiotray

sudo apt-get -y install --force-yes smplayer

sudo apt-get -y install --force-yes libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg libmp4v2-2 totem-mozilla icedax tagtool easytag id3tool lame libmad0 libjpeg-progs libquicktime2 flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev

sudo apt-get -y install --force-yes gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-plugins-bad gstreamer-tools

sudo apt-get -y install --force-yes ttf-mscorefonts-installer

sudo apt-get -y install --force-yes w64codecs libdvdcss2 gstreamer0.10-fluendo-mp3 ffmpeg sox twolame vorbis-tools lame faad gstreamer0.10-ffmpeg gstreamer0.10-plugins-bad

sudo apt-get -y install --force-yes unace rar unrar p7zip zip unzip p7zip-full p7zip-rar sharutils uudeview mpack arj cabextract file-roller

sudo apt-get -y install --force-yes transmission xiphos exaile

sudo apt-get -y install --force-yes python3 ruby php5 perl python-pip build-essential python-dev pwgen iftop ifstat iptraf nmap wireshark tcpdump dstat sysstat pydf lftp iotop gedit

#
# end of program
#
