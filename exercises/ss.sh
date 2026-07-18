#!/usr/bin/env bash

set -euo pipefail


# variables 
EFFECT_LOCATIONS=""   # this variable will hold the address of the areas where the effect is to be applied
file_count=0 # var holding the number of files in the current directory
current_location="" # var holding the current location of the effect whether downloads or desktop
total_ext=0 #var hols total no of indivextensions found
extension_list="" # var holding the list of extensions found in the current directory



# tools
ls and awk and grep # for listing files, extracting extensions, and counting files
cp , mv, mkdir, rm # for copying, moving, creating and deleting files and directories
if #to handling errors like dir not found, file not found, etc
for #loops to iterate over files and directories
while #loops to iterate over files and directories if nessessary
tar #for compressing files and directories

