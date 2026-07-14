#!/bin/env bash

# test if the output source is the screen if so then prints either a plain text or a colour
if [[ -t 1 ]]; then echo -e "\e[32mGreen text\e[0m"; else echo "plain text"; fi 

