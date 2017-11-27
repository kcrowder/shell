#!/bin/bash
#
# Adding your repositories keys for the above source.list:
gpg --keyserver pgpkeys.mit.edu --recv-key 07DC563D1F41B907
gpg -a --export 07DC563D1F41B907 | apt-key add - 
gpg --keyserver keys.gnupg.net --recv-key 06C4AE2A
gpg -a --export 06C4AE2A | apt-key add -
