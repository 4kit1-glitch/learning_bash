#!/usr/bin/env bash


# testing the scope of variables with -g -I local 

# local works only withpin functions definintions
count=0

echo out-count =$count
my_func() {
    local -r count=10
    count=90
    echo in - $count   
}
my_func2() {
    local -I count  # inherits the value of count
    echo $count
}

my_func