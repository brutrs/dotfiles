#!/bin/bash

#
# Create a hard link from each dotfile to it's respectively location. Said
# locations will be created if they do not already exist.
#

declare -A FILES=(
    ["bashrc"]="$HOME/.bashrc"
    ["bash_profile"]="$HOME/.bash_profile"
    ["sway"]="$HOME/.config/sway/config"
    ["waybar"]="$HOME/.config/waybar/config"
    ["waybar.css"]="$HOME/.config/waybar/style.css"
    ["gtk3.ini"]="$HOME/.config/gtk-3.0/settings.ini"
    ["gtk2.ini"]="$HOME/.gtkrc-2.0"
    ["alacritty.yml"]="$HOME/.config/alacritty/alacritty.yml"
    ["icons.theme"]="$HOME/.icons/default/index.theme"
    ["init.vim"]="$HOME/.config/nvim/init.vim"
    ["user-dirs.dirs"]="$HOME/.config/user-dirs.dirs"
    ["scripts/menu.sh"]="$HOME/.local/bin/menu.sh"
    ["scripts/snip.sh"]="$HOME/.local/bin/snip.sh"
)

for FILE in "${!FILES[@]}"; do
    DST="${FILES[$FILE]}"

    if test "$1" == "-p" || test "$1" == "--preview"; then
        echo "$FILE -> $DST"
    else
        mkdir -p "$(dirname $DST)" && ln -f "$FILE" "$DST"
    fi
done
