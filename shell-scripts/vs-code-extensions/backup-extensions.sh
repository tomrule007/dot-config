#!/bin/bash

# Get script path
SCRIPT_PATH=$(dirname $(readlink -f "$0"))

BACKUP_FILE='vs_code_extensions_list.txt'

code --list-extensions > $SCRIPT_PATH/$BACKUP_FILE

COUNT=$(wc -l < $SCRIPT_PATH/$BACKUP_FILE)

echo VS Code extensions backed up: $COUNT extensions '>>' $BACKUP_FILE