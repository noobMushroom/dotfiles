#!/bin/zsh
sleep 10
hyprctl hyprpaper reload , "/home/mushroom/Pictures/wallpapers/SFW/landscape_mountains.png"
echo "Running at $(date)" >> /tmp/wallpaper_debug.log
echo "Wallpaper: /home/mushroom/Pictures/wallpapers/SFW/landscape_mountains.png" >> /tmp/wallpaper_debug.log
notify-send "Wallpaper restored"
break
