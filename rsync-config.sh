#!/bin/sh

rsync -auP --ignore-non-existing ~/.config/ .config
rsync -auP ~/.config/mpv/ .config/mpv

