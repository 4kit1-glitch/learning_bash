#!/bin/bash

set -euo pipefail   # for catching errors 

# This script makes a saved list of all directories and files in a given location
# also keeps a log of the output by counting the lenght of the output using python


# variables 
DIR=$1

echo "$(basename $0) <$DIR>"

ls -la $DIR > list.txt
