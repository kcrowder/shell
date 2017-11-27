#!/bin/bash
# script tp install stuff, just hit enter to say Yes.
# 05.04.2013
# by: keith crowder
#
#
# google chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
apt-get update
apt-get -y install --force-yes google-chrome-stable

# installAlltheThings
apt-get -y install --force-yes flashplugin-nonfree

# If you are running a 64-bit version of Ubuntu, copy and paste in Terminal:
apt-get -y install --force-yes libavcodec-extra-53
wget http://www.deb-multimedia.org/pool/non-free/w/w64codecs/w64codecs_20071007-0.5_amd64.deb
dpkg -i w64codecs_20071007-0.5_amd64.deb
wget http://www.deb-multimedia.org/pool/main/libd/libdvdcss/libdvdcss2_1.2.10-0.3_amd64.deb
dpkg -i libdvdcss2_1.2.10-0.3_amd64.deb
wget http://www.deb-multimedia.org/pool/main/g/gst-plugins-ugly/gstreamer0.10-lame_0.10.17-0.0_amd64.deb
dpkg -i gstreamer0.10-lame_0.10.17-0.0_amd64.deb

apt-get -y install --force-yes vlc mplayer mozilla-plugin-vlc guayadeque radiotray

apt-get -y install --force-yes smplayer

apt-get -y install --force-yes libxine1-ffmpeg gxine mencoder mpeg2dec vorbis-tools id3v2 mpg321 mpg123 libflac++6 ffmpeg libmp4v2-0 totem-mozilla icedax tagtool easytag id3tool lame libmad0 libjpeg-progs libquicktime1 flac faac faad sox ffmpeg2theora libmpeg2-4 uudeview flac libmpeg3-1 mpeg3-utils mpegdemux liba52-0.7.4-dev

apt-get -y install --force-yes gstreamer0.10-ffmpeg gstreamer0.10-fluendo-mp3 gstreamer0.10-gnonlin gstreamer0.10-sdl gstreamer0.10-plugins-bad totem-gstreamer gstreamer-tools

apt-get -y install --force-yes ttf-mscorefonts-installer

# Extra Multimedia packages: For 64-bit
apt-get -y install --force-yes w64codecs libdvdcss2 gstreamer0.10-fluendo-mp3 ffmpeg sox twolame vorbis-tools lame faad gstreamer0.10-ffmpeg gstreamer0.10-plugins-bad avifile-divx-plugin

# The Java Runtime Environment provides the libraries, the Java Virtual Machine, and other components to run applets and applications written in the Java programming language.
# we may not need this, but test it anyway

cd ~/
wget https://github.com/flexiondotorg/oab-java6/raw/0.2.6/oab-java.sh -O oab-java.sh
chmod +x oab-java.sh
./oab-java.sh -7
apt-get -y install --force-yes oracle-java7-jre oracle-java7-jdk oracle-java7-plugin oracle-java7-fonts

# Archiver/ Packing software (Recommended)
apt-get -y install --force-yes unace rar unrar p7zip zip unzip p7zip-full p7zip-rar sharutils uudeview mpack lha arj cabextract file-roller

# abobe pdf reader
apt-get -y install --force-yes acroread

# filezilla
apt-get -y install --force-yes filezilla filezilla-common

# Spotify is a Swedish-founded, UK-headquartered DRM-based music streaming service offering streaming of selected music from a range of major and independent record labels, including Sony, EMI, Warner Music Group, and Universal.

apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
sh -c 'echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list'
apt-get update
apt-get -y install --force-yes spotify-client-qt

# gparted
apt-get -y install --force-yes gparted

# transmission torrent
apt-get -y install --force-yes transmission

# Package: xscreensaver-gl
apt-get -y install --force-yes xscreensaver-gl

# And for the rest of you diehard Firefox fans that still want Firefox instead of Ice Weasel (they are identical to each other in every way except branding) here is how you install the latest Firefox in Debian:
apt-get remove iceweasel
echo -e "\ndeb http://downloads.sourceforge.net/project/ubuntuzilla/mozilla/apt all main" | tee -a /etc/apt/sources.list > /dev/null
apt-key adv --recv-keys --keyserver keyserver.ubuntu.com C1289A29
apt-get update
apt-get -y install --force-yes firefox-mozilla-build

# gftp
apt-get -y install --force-yes gftp

# bible
apt-get -y install --force-yes xiphos

# audio player I like
apt-get -y install --force-yes exaile

# programming and more
apt-get -y install --force-yes python3 ruby php5 perl
apt-get -y install --force-yes python-pip build-essential python-dev
apt-get -y install --force-yes htop iftop ifstat iptraf nmap wireshark tcpdump dstat sysstat pydf lftp iotop
apt-get -y install --force-yes pwgen

# compiz install
apt-get -y install --force-yes compiz compizconfig-settings-manager compiz-fusion-plugins-main compiz-gnome compiz-gtk compiz-core compiz-gtk compiz-plugins compiz-fusion-plugins-main compiz-fusion-plugins-extra compiz-fusion-plugins-unsupported compizconfig-settings-manager
#
# end of program
#
