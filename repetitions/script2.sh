#!/usr/bin/env bash

## looping with range functions -- somehow

# python style looping {start..end}
for i in {1..10}; do 
    echo $i
done

clear

## c - slyle looping 
for (( i = 0; i < 10; i++ )); do 
    echo "hello $i"
done

## using variables to loop