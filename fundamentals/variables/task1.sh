#!/bin/bash

clear

# Creating Global level variable
MAX_TRIES=10    # follow convension of capital letters for global variables
DEFAULT_CITY="CAMPTON" #a string variable the above was an interger variable

## creating local variables inside functions
my_func() {
    local name="harry" 
}