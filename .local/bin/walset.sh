#!/bin/zsh


WAL_DIR="$HOME/Pictures/wallpapers/SFW"
CWD="$(pwd)"


cd "$WAL_DIR" || exit

IFS=$'\n'


SELECED_WALL=$(for a in *.jpg *.png ; do echo -en "$a\0icon\x1f$a\n" ; done | rofi -dmenu -p "")


if [ -n "$SELECED_WALL" ]; then 
   walset_backend "$SELECED_WALL"
fi


cd "$CWD" | exit 


