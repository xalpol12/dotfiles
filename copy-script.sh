#!/usr/bin/env bash

# specify folders that should be copied from .config to this folder
configs=(
"alacritty"
"htop"
"i3"
"polybar"
"zathura"
)

for folder in ${configs[@]}
do
    if [ -d "$HOME/.config/$folder" ]; then
        echo "Copying $folder"
        cp -r "$HOME/.config/$folder" .
    else
        echo "Folder $folder does not exist"
    fi
done


# specify bash files 
home_configs=(
".bashrc"
".bash_aliases"
)

for file in ${home_configs[@]}
do
    if [ -f "$HOME/$file" ]; then
        echo "Copying $file"
        cp -r "$HOME/$file" .
    else
        echo "File $file does not exist in home directory"
    fi
done
