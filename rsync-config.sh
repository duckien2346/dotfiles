#!/bin/sh

# .config
rsync -auP --ignore-non-existing /Users/kien/.config/ config
rsync -auP /Users/kien/.config/mpv/ config/mpv

# /Users/kien/
rsync -auP /Users/kien/.ideavimrc .ideavimrc
rsync -auP /Users/kien/.zprofile .zprofile

