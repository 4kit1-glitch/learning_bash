#!/usr/bin/env bash

# script demonstrates creation and use of array variables


#-------------------creation---------------------------------
declare -a indexed_array    # creating an indexed arrar index start from 0
declare -A associative_array # creation of associative array

# or they may be created using compound assingnments 
ARRAY=("name1" "name2" "name3") # this creates an auto indexed array

#-------------------accessing---------------------------------
# access indexed array elements using index
echo "First element of indexed array: ${ARRAY[0]}"

# access