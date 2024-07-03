#!/bin/bash

path=$1
if [ -z "$path" ]; then
    echo "error: path is required"
    exit 1
fi
if [ ! -d "$path" ]; then
    echo "error: path is not a directory"
    exit 1
fi

cd "$path"
current=$(date +'%Y-%m-%d %H:%M:%S')
echo "check: dir $(pwd)"
echo "check: time $current"

if [ ! $(git rev-parse --is-inside-work-tree) ]; then
    echo "error: not a git repository"
    exit 1
fi
git add .

changes=$(git diff --name-only --staged | xargs -I {} echo "  - {}")
n_changes=$(echo "$changes" | wc -l | xargs)
if [ $n_changes -eq 0 ]; then
    echo "info: No changes to backup"
    exit 1
fi

message="backup: $current"
message+=$'\n'
message+="$changes"

echo "start: backup $n_changes files"
echo "$message"
git commit -m "$message"
gpush
echo $'end: backup completed\n'
