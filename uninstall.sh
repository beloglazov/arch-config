#!/bin/sh

# xorg configs
rm ~/.Xresources
rm ~/.Xmodmap
rm ~/.xinitrc

# other configs
rm ~/.ctags
rm ~/.gitconfig
rm ~/.hawk
rm ~/.vrapperrc
rm ~/.xxkbrc

# .config
rm ~/.config/zathura

# bin
rm ~/bin/chromium
rm ~/bin/disk-benchmark
rm ~/bin/dmenu-run
rm ~/bin/dmenu-switch
rm ~/bin/ffmpeg-encode
rm ~/bin/fix-keyboard
rm ~/bin/libreoffice
rm ~/bin/mem
rm ~/bin/pyflakespep8.py
rm ~/bin/reboot
rm ~/bin/screenshot
rm ~/bin/shutdown
rm ~/bin/silent
rm ~/bin/urxvtc
rm ~/bin/zathura

# /etc

sudo rm /etc/X11/xorg.conf.d/50-keyboard.conf
sudo rm /etc/X11/xorg.conf.d/50-mouse-acceleration.conf
