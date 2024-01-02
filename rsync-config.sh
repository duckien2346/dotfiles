#!/bin/sh

# .config
rsync -auP --ignore-non-existing /Users/kien/.config/ config
rsync -auP /Users/kien/.config/mpv/ config/mpv

# /home/uit/
rsync -auP /home/uit/.ideavimrc .ideavimrc
rsync -auP /home/uit/.Xresources .Xresources
rsync -auP /home/uit/.zprofile .zprofile

# /etc/
rsync -auP /etc/udev/rules.d/ etc/udev/rules.d
rsync -auP /etc/X11/xorg.conf.d/ etc/X11/xorg.conf.d

