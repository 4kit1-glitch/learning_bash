#!/bin/bash

set -euo pipefail   # for catching errors 

# This script makes a saved list of all directories and files in a given location
# also keeps a log of the output by counting the lenght of the output using python

echo "$(basename $0) <folder name or path>"

# variables 
folder_name=""

printf "Script starts now"


# Create a timestamp in a logfile.
date >> $LOGFILE
echo backup succeeded >> $LOGFILE
