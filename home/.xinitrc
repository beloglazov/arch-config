(sleep 10s && xset b off) &
(sleep 10s && xset r rate 250 45) &
setxkbmap -layout "us,ru" -option "grp:toggle,ctrl:nocaps,terminate:ctrl_alt_bksp"
xset +fp /usr/share/fonts/local
xsetroot -cursor_name left_ptr &
~/.mouse
numlockx &
xrdb -merge ~/.Xresources
xxkb &
urxvtd -q -o -f
chromium &
export PATH=~/bin:$PATH

exec dbus-launch xmonad
