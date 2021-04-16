xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
xhost +si:localuser:root
exec i3
#exec qtile
