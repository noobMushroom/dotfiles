#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then
    xrdb -merge $sysresources
fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi
if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi


# xrdb -merge ~/.cache/wal/dwm.xresources 
 ~/.fehbg
 picom -b &
# dwmblocks &
# brave &
# keepassxc &
# exec i3
setxkbmap -layout us -variant dvorak
# exec ~/.local/bin/startdwm
# exec dwm
# exec xmonad 
 export XDG_SESSION_TYPE=x11
 exec ~/.config/chadwm/scripts/run.sh

