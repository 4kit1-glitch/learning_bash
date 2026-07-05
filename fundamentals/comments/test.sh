#!/bin/env bash

set -euo pipefail   # always and forever


# env bash id better than bash for protability 


which bash  # show you where bash is on your machine
which env > find.txt
path="$(head find.txt)"
echo path is $pathhead find.txt | cat 