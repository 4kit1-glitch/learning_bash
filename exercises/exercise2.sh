#!/bin/bash

clear                               # clear screen

echo "Program shows home directory, cuurent terminal and some processes running at level 3 of system"
echo "Program starts now"
echo

echo "Hello $USER"                  # User Greetings

echo "Home directory = $HOME"       # Print home directory
echo "Current Terminal = $TERM"     # print current terminal

# see processes 
echo "Processes"
ls /etc/rc3.d/S