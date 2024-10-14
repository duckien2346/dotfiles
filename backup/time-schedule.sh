#!/bin/bash

nvim=$HOME/.config/nvim
dotfiles=$HOME/Workspaces/personal/dotfiles
notes=$HOME/Workspaces/personal/notes
music=$HOME/Workspaces/personal/music
pass=$HOME/.password-store

projects=(
    "$nvim"
    "$dotfiles"
    "$notes"
    "$music"
    "$pass"
)

for project in ${projects[@]}; do
    if [ ! -d $project ]; then
        echo "error: $project is not a directory"
        exit 1
    fi
    echo "start: backup $project"
    bash $dotfiles/backup/git-push.sh "$project"
    echo $'\n'
done
