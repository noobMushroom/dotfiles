dwmstatus 2>&1 >/dev/null &
~/.fehbg
/home/mushroom/.local/src/dwm-bar/dwm_bar.sh &
picom -b &
xset +fp /home/mushroom/.fonts
xset fp rehash
/* loop to start file */ 
while true; do
        dwm >/dev/null 2>&1
done
exec dwm 
