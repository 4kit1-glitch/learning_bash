#!/bin/bash

# this script shows the use of printf over echo command 

# User information
name="harry"
place_of_birth="Nancho"
age=17
marital_status="single"

# summary
printf "My name is %s, i was born in %s, i am %d years old and i am %s\n" "$name" "$place_of_birth" "$age" "$marital_status"

# summary with echo
echo my name is $name, i was born in $place_of_birth, i am $age years old and i am $marital_status
