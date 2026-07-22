#!/bin/bash

name="$1"

greet() {
    echo "hello $name"
}

# learning about parametersin functions 

welcome() {
    echo "Greeting all users"

    while (( $# )); do
        echo "Welcome, $1!"
        shift
    done
}

welcome "Alice" "Bob" "Charlie"