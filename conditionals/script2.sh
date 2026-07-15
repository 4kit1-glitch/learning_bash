#!/bin/env bash

# test if the output source is the screen if so then prints either a plain text or a colour

cd /home/kit/Kitstdios/learning_bash/conditionals

if [[ -t 1 ]]; then echo -e "\e[32mGreen text\e[0m"; else echo "plain text"; fi 
clear

# check if file is changed more recently than another || or also check if one file exist and the other doesn't
if [[ empty_file.txt -nt print.c ]]; then
    echo -e "print file is modified recently than the empty file";
else
    echo "this is not true";
fi

clear
# checking if one file exist and the other doesn't
if [[ namibia.txt -nt empty_file.txt ]]; then
    echo -e "print file is modified recently than the empty file";
else
    echo "this is not true";
fi

clear 


# others 
# check of file 1 is older than file 2 || file 2 exist and file 1 doesn't

if [[ print.c -ot empty_file.txt ]]; then
    echo -e "file2 exist file 1 not so much";
else
    echo "this is not true";
fi
