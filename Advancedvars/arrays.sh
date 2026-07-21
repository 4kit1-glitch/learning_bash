#!/usr/bin/env bash

# script demonstrates creation and use of array variables


#-------------------creation---------------------------------
declare -a indexed_array    # creating an indexed arrar index start from 0
declare -A associative_array # creation of associative array

# or they may be created using compound assingnments 
ARRAY=("name" "name2" "name3")

