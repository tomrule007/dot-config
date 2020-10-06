##!/bin/bash
# Get script path
SCRIPT_PATH=$(dirname $(readlink -f "$0"))

# *Use -sf if you would like to overwrite your current config files.
ln -s $SCRIPT_PATH/dotfiles/.bash_aliases ~/.bash_aliases
ln -s $SCRIPT_PATH/dotfiles/.bashrc ~/.bashrc
ln -s $SCRIPT_PATH/dotfiles/.gitconfig ~/.gitconfig

# VSCODE Files
ln -s $SCRIPT_PATH/dotfiles/.config/Code/User/keybindings.json ~/.config/Code/User/keybindings.json
ln -s $SCRIPT_PATH/dotfiles/.config/Code/User/settings.json ~/.config/Code/User/settings.json
ln -s -t ~/.config/Code/User/ $SCRIPT_PATH/dotfiles/.config/Code/User/snippets/ 

