#!/usr/bin/env bash

# specify folders that should be copied from .config to this folder
copied_configs=0
configs=(
"alacritty"
"htop"
"i3"
"neofetch"
"polybar"
"rofi"
"tmux"
"zathura"
)

for folder in ${configs[@]}
do
    if [ -d "$HOME/.config/$folder" ]; then
        echo "Copying $folder"
        cp -r "$HOME/.config/$folder" .
        ((copied_configs++))
    else
        echo "Folder $folder does not exist"
    fi
done


# specify bash files 
copied_bash_files=0
home_configs=(
".bashrc"
".bash_aliases"
".vimrc"
)

for file in ${home_configs[@]}
do
    if [ -f "$HOME/$file" ]; then
        echo "Copying $file"
        cp -r "$HOME/$file" .
        ((copied_bash_files++))
    else
        echo "File $file does not exist in home directory"
    fi
done


# copy custom login screen files
copied_etc_files=0
if [ -f "/etc/lightdm/lightdm-gtk-greeter.conf" ]; then
    echo "Copying lightdm-gtk-greeter files"
    sudo cp /etc/lightdm/lightdm-gtk-greeter.conf ./lightdm-greeter/resources/
    sudo cp /usr/share/pixmaps/background.jpg ./lightdm-greeter/resources/
    ((copied_etc_files+=2))
else
    echo "No lightdm-gtk-greeter.conf file detected, make sure that the file exists and you are using lightdm"
fi


echo "Copied $copied_configs .config folders, $copied_bash_files bash files, $copied_etc_files etc files"
