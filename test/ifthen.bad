#!/usr/bin/bash
# verify permissions, change is needed
# original script by keith crowder
# 09-27-08
# still working on it ^_-, needs a lot more work
#
echo "please enter a file name: "
read file

if [ "$file" = -a ]; then
   echo "file exists, you wanna modify it?"
else
   echo "does file $file look executable?"
   echo "lets take a look:"
   ls -alG $file
   echo "if the executable permissions are set correctly, let us know"
fi
#
   echo "press 1 if you want the file to be executable, 2 if you want it to be read/write only"
read option
if [ "$option" = 1 ]; then
   chmod +x $file
   echo "the file $file is now executable!"
   ls -alG $file
else [ "$option" = 2 ]
   chmod -x $file
   echo "the file $file is now executable!"
   ls -alG $file
fi
