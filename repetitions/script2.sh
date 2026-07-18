#!/usr/bin/env bash

## looping with range functions -- somehow

# python style looping {start..end}
for i in {1..10}; do    # this uses brace expansion so using vars wont work cuause of execution sequencing
    echo $i
done

clear

## c - slyle looping 
for (( i = 0; i < 10; i++ )); do # variables works here well
    echo "hello $i"
done

## using variables to loop

clear
start=1
stop=10
step=2

for i in $(seq $start $stop); do
    echo "hello world"
done

# or just use (())