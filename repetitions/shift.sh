#!/bin/bash

# this script demonstrates the shift built in 
# it provides a good way to work with parameters passed 

count=0

while (( $# )); do
    (( count++ ))
    echo "$1"
    shift
done
printf "%d\n" "$count"