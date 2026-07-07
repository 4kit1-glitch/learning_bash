#!/bin/bash

clear

## you can access the IFS value but make sure to reset it 

echo $IFS   # usually and empty string
OLDIFS=$IFS

IFS=","     # reassigning

echo $IFS   # New IFS

text="hello,welcome,kengah"

for word in $text; do
    echo "word: $word"
done

## Make sure to  reassign to avoid further problems
IFS=$OLDIFS
