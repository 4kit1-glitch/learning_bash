#!/bin/env bash

# answers exercises on conditionals in beginner bash book

#---------vars
month="$(date +%B)"
year="$(date +%Y)"


#---------------------opreations---------------------------------
if [[ month == "February" ]]; then
    if (( ($year % 400 == 0) || ($year % 4 == 0) && ($year % 100 != 0) )); then 
        echo "this is a leap year"
        return 0
    else
        echo "this is not a leap year"
        return 2
    fi
else
    echo "month isn't february"
    (exit 1)
fi

# --------------- operations with case---------------------------
case $? in
    0)
        echo "program ran succesfully"
        ;;
    1)
        echo "month ain't february"
        ;;
    2)
        echo "month is february but not a leap year"
        ;;
esac


