#!/bin/bash
# Toggle Touchpad: simple command to enable/disable touchpad.
# Prevent palm clicks on laptops with poor palm detection.
#   TIP: create an alias and add it to your ~/.bashrc file
#   Example: echo "alias tt=$(pwd)/toggle-touchpad.sh" >> ~/.bashrc

# *** MUST UPDATE THIS VARIABLE ***
DEVICE_NAME='Synaptics TouchPad'
# *Use 'xinput' command to find the correct device name.

ID=$(xinput | sed -n "s/.*$DEVICE_NAME.*id=\(..\).*/\1/ p")
ENABLED=$( echo -n $(xinput list-props $ID | grep 'Device Enabled') | tail -c 1)
if [[ "$ENABLED" -eq "1" ]] 
then
$(xinput disable $ID)
echo 'toggle-touchpad: Touch Pad is DISABLED'
else 
$(xinput enable $ID)
echo 'toggle-touchpad: Touch Pad is ENABLED'
fi