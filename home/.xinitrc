xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
xhost +si:localuser:root
synclient PalmDetect=0
exec i3
#exec dwm
