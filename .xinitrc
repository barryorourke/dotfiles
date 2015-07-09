# dbus instance #
eval `dbus-launch --sh-syntax --exit-with-session`

# hide mouse when not in use #
unclutter -root -visable &

# set the background #
[ -e ~/.fehbg ] && source ~/.fehbg

# bindkeys for laptop #

xrdb -merge ~/.Xdefaults

# start i3
exec i3
