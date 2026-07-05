#!/bin/bash 

## this script demonstrates how working with the dirstack

echo "see items in dirstack"
dir
echo

echo "add videos directory"
pushd ~/Videos

echo "see the dirstack"
dir
echo "current working directory = $PWD" ## this should show videos


