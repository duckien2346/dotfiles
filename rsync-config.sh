#!/bin/sh

# .config
rsync -auP --ignore-non-existing ~/.config/ config

rsync -auP ~/.ideavimrc .ideavimrc
rsync -auP ~/.profile .profile

