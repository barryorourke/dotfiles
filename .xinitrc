# set the keyboard map #
setxkbmap gb

# dbus instance #
eval `dbus-launch --sh-syntax --exit-with-session`

# hide mouse when not in use #
unclutter -root -visable &

# set the background #
[ -e ~/.fehbg ] && source ~/.fehbg

# bindkeys for laptop #
xbindkeys

# start i3
exec i3
