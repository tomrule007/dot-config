#!/bin/bash
set -euo pipefail

# TODO: Use this example script to make terminal show my toggl track task and time.

# Adds a clock to the top right of the terminal
while sleep 1;do tput sc;tput cup 0 $(($(tput cols)-11));echo -e "\e[31m`date +%r`\e[39m";tput rc;done &