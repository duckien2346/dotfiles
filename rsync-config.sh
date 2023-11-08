#!/bin/sh

rsync -auP --ignore-non-existing --exclude nvim /home/uit/.config/ config
#rsync -auP --ignore-non-existing /home/uit/.config/ config

rsync -auP /home/uit/.config/mpv/ config/mpv
rsync -auP /home/uit/.config/dunst/ config/dunst
# rsync -auP /home/uit/.config/nvim/ config/nvim
rsync -auP /home/uit/.ideavimrc .ideavimrc
rsync -auP /etc/udev/rules.d/ etc/udev/rules.d
rsync -auP /etc/X11/xorg.conf.d/ etc/X11/xorg.conf.d

