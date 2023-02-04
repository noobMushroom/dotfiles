#!/bin/sh
#dwmstatus 2>&1 >/dev/null &
~/.fehbg
#/home/mushroom/.local/src/dwm-bar/dwm_bar.sh &
picom -b &
xset +fp /home/mushroom/.fonts
xset fp rehash
#~/.config/polybar/launch.sh
dwmblocks &
#exec dwm 
# while true; do
#         dwm >/dev/null 2>&1
# done

while type dwm >/dev/null ; do dwm && continue || break; done 
