#!/bin/bash

mkdir -p $HOME/.config
mkdir -p $HOME/scripts
mkdir -p $HOME/backup

stow -v --adopt --target $HOME home
stow -v --adopt --target $HOME/.config config
stow -v --adopt --target $HOME/scripts scripts
stow -v --adopt --target $HOME/backup backup
