#!/bin/sh

rsync -auP --ignore-non-existing /home/uit/.config/ config
rsync -auP --ignore-non-existing /etc/X11/xorg.conf.d/ ./xorg.conf.d

rsync -auP /home/uit/.config/mpv/ config/mpv
rsync -auP /home/uit/.config/nvim/ config/nvim
rsync -auP /home/uit/.ideavimrc .ideavimrc

