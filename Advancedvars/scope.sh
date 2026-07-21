#!/usr/bin/env bash


# testing the scope of variables with -g -I local 

# local works only withpin functions definintions
count=0

echo out-count =$count
my_func() {
    local count
    echo in - $count    
}
my_func2() {
    local -I count

}
