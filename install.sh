##!/bin/bash
# directoy of this script
BASEDIR=$(dirname "$0")

# *Use -sf if you would like to overwrite your current config files.
ln -s $BASEDIR/dotfile/.bash_aliases ~/.bash_aliases
ln -s $BASEDIR/dotfile/.bashrc ~/.bashrc