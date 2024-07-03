#!/bin/bash

changes=$(git diff --name-only | wc -l | xargs)
if [ $changes -eq 0 ]; then
    echo "No changes to backup"
    exit 0
fi
echo "Start to backup $changes files"
# git add .
current=$(date +'%Y-%m-%d %H:%M:%S')
message="backup: $current"
message+=$'\n'
message+=$(git diff --name-only --staged | xargs -I {} echo "  - {}")
echo "$message"
# git commit -m "$message"
# git push
