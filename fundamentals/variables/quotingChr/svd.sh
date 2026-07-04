#!/bin/bash

echo "Script shows the difference between double quotes and single quotes"


txt="hello"

# using Double quotes 
echo "- $txt"

#using single quotes
echo '- $txt' 

# trying a command 

ls *.txt
echo '*.sh'