#!/bin/bash

cd $(dirname $BASH_SOURCE)

# xorg configs
ln -sfbv `pwd`/home/.Xresources ~
ln -sfbv `pwd`/home/.Xmodmap ~
ln -sfbv `pwd`/home/.xinitrc ~

# other configs
ln -sfbv `pwd`/home/.ctags ~/.ctags
ln -sfbv `pwd`/home/.gitconfig ~/.gitconfig
ln -sfbv `pwd`/home/.hawk ~/.hawk
ln -sfbv `pwd`/home/.sshrc ~/.sshrc
ln -sfbv `pwd`/home/.vrapperrc ~/.vrapperrc
ln -sfbv `pwd`/home/.xxkbrc ~/.xxkbrc

# .config
mkdir -p ~/.config
ln -sfbv `pwd`/home/.config/zathura ~/.config

# backup directory
mkdir ~/.backups

# bin
mkdir -p ~/bin
ln -sfbv `pwd`/home/bin/chromium ~/bin
ln -sfbv `pwd`/home/bin/disk-benchmark ~/bin
ln -sfbv `pwd`/home/bin/dmenu-run ~/bin
ln -sfbv `pwd`/home/bin/dmenu-switch ~/bin
ln -sfbv `pwd`/home/bin/ffmpeg-encode ~/bin
ln -sfbv `pwd`/home/bin/fix-keyboard ~/bin
ln -sfbv `pwd`/home/bin/libreoffice ~/bin
ln -sfbv `pwd`/home/bin/mem ~/bin
ln -sfbv `pwd`/home/bin/pyflakespep8.py ~/bin
ln -sfbv `pwd`/home/bin/reboot ~/bin
ln -sfbv `pwd`/home/bin/screenshot ~/bin
ln -sfbv `pwd`/home/bin/shutdown ~/bin
ln -sfbv `pwd`/home/bin/silent ~/bin
ln -sfbv `pwd`/home/bin/urxvtc ~/bin
ln -sfbv `pwd`/home/bin/zathura ~/bin

# /etc

sudo ln -sfbv `pwd`/etc/X11/xorg.conf.d/50-keyboard.conf /etc/X11/xorg.conf.d
sudo ln -sfbv `pwd`/etc/X11/xorg.conf.d/50-mouse-acceleration.conf /etc/X11/xorg.conf.d
