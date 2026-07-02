#!/bin/bash

clear

echo "script reads parameters passed and prints them"

## this makes use of the $* special parameters to get and print the values

echo "First parameter $1"
echo "Second parameter $2"
echo "Third parameter $3"

## these parameters can be passed unto variables

first_name=$1
second_name=$2
third_name=$3

full_name=$*    # this makes a string of all parameters passed (more like options when the variable is found)

echo "your full name is: $full_name"





