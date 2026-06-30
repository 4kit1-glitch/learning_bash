#!/bin/bash
# progam uses date, w , uname, uptime
# THIS PROGRAM IS A COPY OF mysystem.sh but using the "printf command to print not echo"

clear 

printf "This program displays some info about $USER's system \n"

printf "program starts now"

printf "hello $USER"
printf "\n"

printf "The current date is `date` this is week `date +"%V"`"
printf "\n"

printf "summary\n"
printf "user = " 
w | cut -d " " -f 1 - | grep -v USER | sort -u
printf "OS running = `uname -s`\n"
printf "processor type = `uname -m`\n"

printf "uptime info \n"
uptime
