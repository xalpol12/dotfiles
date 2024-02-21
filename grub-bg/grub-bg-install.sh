#!/usr/bin/env bash

sudo cp ./resources/grub-bg.jpg /boot/grub/
sudo update-grub
echo "Generated grub files with new background"
