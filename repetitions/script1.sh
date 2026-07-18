#!/usr/bin/env bash

# script show the basic of repition and looping in bash

#1 for -loops 
## used to iterate over a list of items or a range of numbers. The syntax is as follows:
# 
# for name in list; do 
#       commands;
# done

# if list is not set then by default it will iterate over the positional parameters passed to the script or function. i.e "$@"

# ----------------------------- -------------------------------------------------------------------------------------
ls /home/kit/Kitstdios/learning_bash/conditionals > repetitions/file.txt

files=$(cat repetitions/file.txt)
echo $files

# a simple for loop
# using "$files" prevents globbing and expansion of files with ""
for file in $files; do 
    echo $file
done

clear

# using IFS value to loop through
extensions="txt,jpeg,mmpeg"

count=0

for ext in $extensions; do 
    echo "$ext" 
    ((count++))
done 

echo "count is $count"

# handling parameters use the $@ or $* but the first is reccomaeded cause it handles names with spaces well

clear

# loopin through the output of a process
for item in "$(cat repetitions/file.txt | grep "\.sh")"; do  # better to use a var to store operation
    echo "$item"
done