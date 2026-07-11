#!/bin/env bash

# script demonstrates use of wildcards in regex


# getting a set of five chars with a specified start and end
grep -E '<\c...h/>' /usr/shared/dict/words  # print 5 digit words starting c and ending in h


# getting a set of all words starting with c and ending with h
grep -E '\<c.*h/>' /user/shared/dict/words

# getting all lines no match case
grep -E '*' /user/shared/dict/words

# if you need the literal * use \


## regex patterns also work for other programs in bash like ls and others


