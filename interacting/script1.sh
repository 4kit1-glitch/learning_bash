#!/usr/bin/env bash

# this script explains writing pinterractive scripts -- larger and more effective scriptsCMD

## catching users input
# this is done with the read built in command
# read [options] name1 name2 -- nameN

#------------------- read built in method----------------------
read -p "Enter your name" name  # standard method with a prompt

echo "hey $name"

clear

# ----------------- output with delim
read -d "." -p "Enter the message: " message

clear

echo -e "you said \n- $message"

clear

# ------------------- read with readline command or -e tag-----------------------
read -e -p "hello : " greet
echo "$greet"

clear
#--------------------- time out---------------------------------------
read -t 6 -p "hurry:   "

#--------------------- prevent ing backlash interpretation with ------------------------------
read -r -p "ppp"    # good to use by defualt


