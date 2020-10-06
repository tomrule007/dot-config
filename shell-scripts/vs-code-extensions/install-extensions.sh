#!/bin/bash

# Get script path
SCRIPT_PATH=$(dirname $(readlink -f "$0"))

# Uncomment the next line if you would like to uninstall all exsisting extensions
# code --list-extensions | xargs -n 1 code --uninstall-extension

cat vs_code_extensions_list.txt | xargs -n 1 code --install-extension