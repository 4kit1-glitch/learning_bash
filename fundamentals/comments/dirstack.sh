#!/bin/bash 

## this script demonstrates how working with the dirstack

echo "see items in dirstack"
dirs    # see the dirstack
echo

echo "add videos directory"
pushd ~/Videos
echo


echo "current working directory = $PWD" ## this should show videos

echo "see items in dir stack = $(dirs)"

echo "add pictures directory"
pushd ~/Pictures

echo "see items in dir stack = $(dirs)"
echo ~+  ## see pwd


popd 

echo ~+
echo ~-
dirs


cd ~1   ## moves to first item on the dir stack and removes everyitem before it 
pwd
dirs
