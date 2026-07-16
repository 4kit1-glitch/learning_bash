#!/bin/env bash

word=""
word2="cancer"
if [[ -z $word ]]; then
    echo "word is empty";
else
    echo "word is not empty"
fi

echo "word = $word length = ${#word}"

if [[ $word == "" ]]; then 
    echo hello
fi

clear
# check if the lenght of a string is non zero
if [[ $word2 ]]; then
    echo "word is not empty"
else
    echo "watashi no namaye"
fi