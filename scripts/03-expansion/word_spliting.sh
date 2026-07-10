#!/bin/env bash

# script shows faults in some scripts and correct way to run it

## !!!!!! DONT RUN THIS SCRIPT  

######################################################
# word splitting only occurs if the command is given #
# without qoutes meaning it checks all the           #
# other expansions then does the splitting           #
#######################################################

set -x  # openning debug mode 

file_name="my file_name.txt"


# bad
echo $file_name # word splits into two my and file_name.txt 

# good
echo "$file_name"

# **************************************************** #
# Word splitting only occurs after expansion           #
# It is safer to always use "" when calling file names #
# note all expansions are affected by it               #
# **************************************************** #

## unsafe
touch $file_name #creates 2 files

## safe
touch "$file_name" # creates 1 file


# the shell automatically uses the default IFS value to do the splitting 
# if the IFS value is changed the value of splitting may be corrupted

## example with ifs

clear 

extensions=".py,.ipy,.cpy,.syder"
OLDIFS=$IFS
IFS="," # NEW DELIMITER

count=0
for ext in $extensions; do
    ((count+=1))
done

echo $count

IFS=$OLDIFS

# Qoutes keeps empty vars but no qoutes eliminates emty variables 
# example
clear

name_var=""

touch $name_var 2> >(grep -i "error" > err.txt) ## gives an error missing file operand

