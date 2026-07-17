#!/bin/bash

# interactive scripts

#credencials
read -p "enter user name: " username
read -s -p "passcode: " password

#validation
if [[ $username == $USER ]]; then
    echo "welcome to user system"
elif [[ $username == "root" ]]; then
    echo -n "password req: "
    read -s pass
    if [[ $pass == $password ]]; then
        echo -e "\nwelcome to system as admin"
    else
        echo "failed"
        (exit 1)
    fi
else
    echo "criminal detected !!!"
    read -t 2 -p "who are u"
    (exit 2)
fi

