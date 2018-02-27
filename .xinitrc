# dbus instance #
eval `dbus-launch --sh-syntax --exit-with-session`

# hide mouse when not in use #
unclutter &

# set the background #
[ -e ~/.fehbg ] && source ~/.fehbg

# network manager applet
nm-applet &

# screensaver
xss-lock -- i3lock -n -c 000000 &

# set up multimedia buttons
xbindkeys &

# sort out .Xdefaults
xrdb -merge ~/.Xdefaults

# GB keymap
setxkbmap gb

# start i3
exec i3
