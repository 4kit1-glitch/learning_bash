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

# working with intergers 

num1=4
num2=8

if [[ "$num1" -ne "$num2" ]]; then
    echo "they are equal"
else
    echo "not equal"
fi

clear

long_txt="hello i am called kit i am a boy"

echo "$long_txt" | grep -o 'k.t'
# regex in conditionals
if [[ "$(echo "$long_txt" | sed -E 's/k.t/p')" == $USER ]]; then
    echo "the text has the current user name";
else 
    echo "i am loving bash rn"
fi