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




