#!/bin/env bash

set -euo pipefail

## question 1
grep -Ei 'ERROR|CRITICAL' /var/log/app.log

## question2
sed -i.bak 's/,,/,0,/g' data.csv

## question3
sed '1,5d' config.yaml

## question4
echo "processed 15420 records" | grep -Eo '[[:digit:]]'

## 5
cp temps.log.bak temp.log