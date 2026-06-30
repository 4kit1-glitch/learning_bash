#!/bin/bash

# clearing  screen 
clear

# Providing user with info on what the script does
echo "this script sets and prints two variables and prints a list of logedin users"
echo
echo "hello $USER"

# printing the  list now
echo 
w
echo

# assigning the user variables
COLOR="yellow"
USERNAME="harry"

# printing the variable
printf "%s\n%s\n" $COLOR $USERNAME

