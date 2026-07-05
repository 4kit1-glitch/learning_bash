#!/bin/bash


# ~ == $HOME == /home/kit
# ~+ == $PWD
# ~- == $OLDPWD

clear 

printf "All files in the videos library\n"
ls -la ~/Videos

printf "print current working directory\n"
echo ~+

printf "move to videos directory\n"
cd ~/Videos

echo old dir = ~-

echo new dir = ~+

