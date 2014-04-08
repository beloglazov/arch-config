This repository contains my configuration of Arch Linux and some command line
tools. In addition to the configuration files themselves, the repository
includes scripts for installing the tools and symlinking the configuration files
to the right locations. The scripts can be used to completely configure a clean
installation of Arch Linux. In summary, the following software and tools are
installed and configured:

 - Yaourt: a package installer, which handles both the core repositories and AUR
 - Xmonad: a tiling window manager with optional
   [configuration](https://github.com/beloglazov/xmonad-config)
 - Vim: a text editor, which I mainly use these days, with optional
   [configuration](https://github.com/beloglazov/vimrc)
 - Freetype2 infinality + a set of fonts (e.g., Terminus): font configuration
 - Tex, Python libs, and may other useful applications


# Initial steps

The scripts included in this repo assume that you have Arch Linux installed,
which can be done by following the installation procedure described in the Arch
wiki:

 - https://wiki.archlinux.org/index.php/Installation_Guide
 - https://wiki.archlinux.org/index.php/Beginners_Guide

Once you have Arch Linux installed, you need to follow the following basic steps
as `root` to be able to use the scripts from this repo:

1. By default, the dhcp daemon is disabled, you need to turn it on:
```Bash
systemctl enable dhcpcd
systemctl start dhcpcd
```

2. Next, it's a good idea to rank the repo mirrors to use the fastest available:
```Bash
cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist-backup
rankmirrors -n 6 /etc/pacman.d/mirrorlist-backup > /etc/pacman.d/mirrorlist
```

3. Update the system, and install `sudo`, `openssh`, and `git`:
```Bash
pacman -Syu
pacman -S sudo openssh git
```

4. Modify the sudo configuration to allow users from the `wheel` group to use
   `sudo`:
```Bash
visudo
# Uncomment the following line, and save the file with :wq
# %wheel ALL=(ALL) ALL
```

5. Create a user `<username>`, add the user to `wheel`, and set the password:
```Bash
useradd -m <username>
usermod -G wheel -a <username>
passwd <username>
```

6. Added a Haskell repository as described here (it will be used to install
   Xmonad): https://wiki.archlinux.org/index.php/Haskell_Package_Guidelines

Now, you are ready to clone the current repository and start running the
configuration scripts. This needs to be done under `<username>`. The following
commands switch to the `<username>` user, create a `repos` directory, and clone
this repository there:

```Bash
su - <username>
mkdir repos
cd repos
git clone https://github.com/beloglazov/arch-config.git
cd arch-config
```

# Installation scripts

Everything is now ready to start running the installation scripts:

1. `./install-01-yaourt.sh`: install Yaourt
2. `./install-02-haskell-repo.sh`: add the Haskel repo (use for Xmonad, etc.)
3. `./install-03-apps.sh`: install a number of useful and essential applications:
    - `xmonad`: a tiling window manager written in Haskell
    - `rxvt-unicode`: a highly customizable terminal
    - `fish`: an [awesome shell](https://github.com/fish-shell/fish-shell)
    - `dmenu`: a great customizable tool for running applications and other
      tasks
    - `xxkb`: remember window-specific keyboard layouts
    - `slock`: an awesome screen locker
    - `gvim`: *the* text editor, comes with extra functionality compared with
      the default Vim
    - `chromium`: an open source version of Google Chrome
    - `ranger`: an amazing file manager
    - `ag`: a better grep
    - `fasd`: an indispensable directory and file jumping program
    - `htop`: system and resource utilization information at a glance
    - `colordiff`: add some colors to your diffs
    - `feh`: a very fast image viewer
    - `ncdu`: a tool for finding things that consume disk space and deleting them
    - `pydf`: disk usage in color
    - `dzen2`: a tool for displaying information in an overlay
    - `zathura`: an awesome PDF viewer with Vim-like key bindings
    - `dtrx`: an intelligent archive extractor
    - and other useful tools
6. `./install-04-configs.sh`: create symlinks to all the configs, please update
   `.gitconfig` with your name!
7. `./install-05-fonts.sh`: install freetype2-infinality and a set of fonts:
    - Terminus
    - DejaVu
    - TeX Gyre
    - Mac fonts
    - MS fonts
8. `./install-06-libreoffice.sh`: you need an office in this life, let it be
   LibreOffice.
9. `./install-07-tex.sh`: Latex tools: texlive, auctex, texmaker.
10. `./install-08-python.sh`: Python tools and libs:
    - `pip2`: a Python package manager
    - `ipython2`: a powerful Python Shell
    - `bpython2`: another Python Shell with fancy auto-completion
    - and other tools: pyflakes, pep8

Once the steps are completed, reboot, login, type `startx`, and enjoy! :)


# Where is Xmonad, Vim, and fish configuration?

Previously, I kept my whole configuration in the
[arch-xmonad-zsh](https://github.com/beloglazov/arch-xmonad-zsh) repo, however,
it wasn't scalable, as I couldn't for example easily use my Vim or shell
configuration in Arch and on a Mac. I've decided to split the configuration into
multiple repos to make it more reusable. In particular, have a look at the
following repos:

- https://github.com/beloglazov/xmonad-config
- https://github.com/beloglazov/fish-config
- https://github.com/beloglazov/vimrc
- https://github.com/beloglazov/mac-config


## License

The source code is released under the Apache 2.0 license.

Copyright (C) 2014 Anton Beloglazov
