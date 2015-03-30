(sleep 10s && xset b off) &
(sleep 10s && xset r rate 250 45) &
setxkbmap -layout "us,ru" -option "grp:toggle,ctrl:nocaps,terminate:ctrl_alt_bksp"
xcape -e 'Shift_L=parenleft;Shift_R=parenright;Control_R=BackSpace'
xset +fp /usr/share/fonts/local
xsetroot -cursor_name left_ptr &
~/.mouse
numlockx &
xrdb -merge ~/.Xresources
export JAVA_HOME=/usr/lib/jvm/java-default-runtime
xxkb &
urxvtd -q -o -f
chromium &
export PATH=~/bin:$PATH

exec dbus-launch xmonad
