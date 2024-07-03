#!/bin/bash

stow -v --adopt --target $HOME home
mkdir -p $HOME/.config
stow -v --adopt --target $HOME/.config config
mkdir -p $HOME/scripts
stow -v --adopt --target $HOME/scripts scripts
mkdir -p $HOME/backup
stow -v --adopt --target $HOME/backup backup
