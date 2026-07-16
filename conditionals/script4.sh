#!/bin/env bash

set -euo pipefail

name="benson"

if [[ !("$name") ]]; then
    echo "hello no name"
else
    echo "hello $name"
fi