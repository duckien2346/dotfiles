#!/bin/sh

rsync -auv --ignore-non-existing ~/.config/ .config
rsync -auv ~/.config/mpv/ .config/mpv

