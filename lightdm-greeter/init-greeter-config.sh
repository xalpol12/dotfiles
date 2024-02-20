#!/usr/bin/env bash

if [ -d "/etc/lightdm" ]; then
    sudo cp ./resources/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
    sudo cp ./resources/background.jpg /usr/share/pixmaps/background.jpg
    echo "Copied lightdm-gtk-greeter files"
else
    echo "No /etc/lightdm directory detected, make sure that the directory exists and you are using lightdm"
fi
