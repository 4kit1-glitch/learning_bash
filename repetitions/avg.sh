#!/bin/bash

# script calculates alverage of users input 

# ------------vars

alverage="0"
sum="0"
mark_count="0"

while true; do
    echo "press q to exit"
    read -p "Enter the marks: " mark

    if [[ $mark =~ [a-zA-Z] ]]; then
        if (( mark_count >= 0 )); then
            average=$(bc -l <<< "scale=2; $sum / $mark_count")
            echo "alverage = $average" 
        else 
            echo "no marks entered"
            
        fi
        break
    else
        sum=$(bc -l <<< "scale=2; $sum + $mark")
        (( mark_count++ ))
        echo - $sum - $mark_count
    fi
done

echo "Exiting !!!"
