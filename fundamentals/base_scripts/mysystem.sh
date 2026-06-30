#!/bin/bash
# progam uses date, w , uname, uptime

clear 

echo "This program displays some info about $USER's system"

echo "program starts now"

echo "hello $USER"
echo

echo "The current date is `date` this is week `date +"%V"`"
echo

echo "summary"
echo "user = `w | cut -d " " -f 1 - | grep -v USER | sort -u`"
echo "OS running = `uname -s`"
echo "processor type = `uname -m`"

echo "uptime info"
uptime



