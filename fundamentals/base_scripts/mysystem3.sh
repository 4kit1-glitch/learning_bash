#!/bin/bash

# program prints user info 
# using printf is more flexible and is more portable
# clear screen
clear

# greeting user
printf "hello $USER\n"

# get current date
printf "current date = $(date)\n current week n0 = $(date +"%V")\n"

# get user info 
printf "logged user = "
w | awk '{print $1}' | grep -v USER | sort -u

# os information
printf "\nOS running = $(uname -s)\n"
printf "Processor type = $(uname -m)\n"

printf "\nUptime info:\n"
uptime
