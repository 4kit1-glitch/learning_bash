#!/bin/env bash


# env bash id better than bash for protability 


which bash  # show you where bash is on your machine
which env > find.txt
path="$(head find.txt)"
echo path is $path