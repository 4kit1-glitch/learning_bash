#!/bin/env bash

set -euo pipefail

echo setting Defaults 

: ${BACKUP_DIR:="$HOME/backups"}       # setting default backup directory if user did not set it
: ${DAYS:=7}        # setting Default days to 7 days

echo "Backul folder is $BACKUP_DIR, cycle = $DAYS"
