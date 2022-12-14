#!/bin/bash
#
#
neofetch
if [ $? -eq 0 ] ; then
   echo 'neofetch already installed!'
 else
   sudo apt install neofetch && echo 'neofetch done!'
fi
