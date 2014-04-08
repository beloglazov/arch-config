#!/bin/sh

yaourt -S xorg xorg-xinit haskell-xmonad haskell-xmonad-contrib \
    haskell-xmonad-extras rxvt-unicode urxvt-perls-git dmenu numlockx xxkb \
    slock openssh chromium rsync jdk7-openjdk apache-ant maven lftp unzip \
    unrar tree subversion alsa-utils flashplugin ntp ranger chromium-libpdf \
	glances aspell aspell-en ispell bc colordiff colorsvn fasd dmidecode \
    elinks htop iftop lesspipe highlight ncdu feh hwinfo pydf atool libcaca \
    dzen2 mplayer tcl tk lnav ntfs-3g cloc zathura zathura-pdf-poppler dtrx \
    dosfstools ntfsprogs ctags gvim fzf-git cabal-install the_silver_searcher \
    wmctrl haskell-hlint fish alsamixer

mkdir -p ~/.config/ranger
ranger --copy-config=scope

cabal update
cabal install cabal-install
cabal install happy haskell-awk fast-tags ghc-mod
