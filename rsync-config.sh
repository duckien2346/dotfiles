#!/bin/sh

# .config
rsync -auP --ignore-non-existing --exclude nvim /home/uit/.config/ config
rsync -auP /home/uit/.config/mpv/ config/mpv
rsync -auP /home/uit/.config/dunst/ config/dunst
# rsync -auP /home/uit/.config/nvim/ config/nvim

# /home/uit/
rsync -auP /home/uit/.ideavimrc .ideavimrc
rsync -auP /home/uit/.Xresources .Xresources
rsync -auP /home/uit/.zprofile .zprofile

# /etc/
rsync -auP /etc/udev/rules.d/ etc/udev/rules.d
rsync -auP /etc/X11/xorg.conf.d/ etc/X11/xorg.conf.d

