#!/bin/env bash

# script checks if a user exist in a machine
USER="kit"

grep -Ei "\<$USER" /etc/passwd  # user named kit exitst

# script needs if statements to make full conditional assumption hence it is longer

