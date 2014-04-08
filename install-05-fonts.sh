#!/bin/sh

yaourt -S --noconfirm freetype2-infinality xorg-xfontsel terminus-font \
    terminus-font-ttf ttf-dejavu otf-texgyre ttf-mac-fonts ttf-ms-fonts \
    fontconfig-infinality

# lib32-freetype2-infinality

sudo /etc/fonts/infinality/infctl.sh setstyle win7
sudo sh -c "cd /usr/share/fonts/local; mkfontdir"
