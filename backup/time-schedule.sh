#!/bin/bash

dotfiles=$HOME/Workspaces/personal/dotfiles
nvim=$HOME/.config/nvim
notes=$HOME/Workspaces/personal/notes
pass=$HOME/.password-store
music=$HOME/Workspaces/personal/music

projects=(
    "$dotfiles"
    "$nvim"
    "$notes"
    "$pass"
    "$music"
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
