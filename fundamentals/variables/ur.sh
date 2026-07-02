#!/bin/bash

# program demonstrates use of some reserved values expecially IFS 
# IFS -- INTERNAML FIELD SEPARATOR

clear

words="apple banana cherry"
echo $words #This prints the whole string

## now separating using IFS

# this prints the individual fruits one by one
for word in $words; do
    echo "fruit: $word"
done

