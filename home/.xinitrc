xmodmap ~/.Xmodmap
xrdb -merge ~/.Xresources
xhost +si:localuser:root
synclient PalmDetect=0
eval $(gnome-keyring-daemon --start)
export SSH_AUTH_SOCK
eval $(cat .fehbg)
exec i3
#exec dwm
