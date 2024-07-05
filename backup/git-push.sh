#!/bin/bash

main() {
    path=$1

    isDir
    cd "$path"

    isGitDir
    current=$(date +'%Y-%m-%d %H:%M:%S')
    echo "check: dir $(pwd)"
    echo "check: time $current"

    gitCommit
    gitPush
}

isDir() {
    if [ -z "$path" ]; then
        echo "error: path is required"
        exit 1
    fi
    if [ ! -d "$path" ]; then
        echo "error: path is not a directory"
        exit 1
    fi
}

isGitDir() {
    if [ ! $(git rev-parse --is-inside-work-tree) ]; then
        echo "error: not a git repository"
        exit 1
    fi
}

hasChanges() {
    git add . &> /dev/null
    local changes=$(git diff --name-only --staged | xargs -I {} echo "  - {}")
    git reset &> /dev/null
    local n_changes=$(echo "$changes" | sed '/^\s*$/d' | wc -l | xargs)
    if [ $n_changes -eq 0 ]; then
        echo "info: No changes to Commit"
        exit 1
    fi
    local message="backup: $current"
    message+=$'\n'
    message+="$changes"
    echo "$message"
}

gitCommit() {
    local message=$(hasChanges)
    if [[ "$message" =~ "info" || "$message" =~ "error" ]]; then
        echo "$message"
    else
        local n_changes=$(echo "$message" | wc -l | xargs)
        echo "start: backup $((n_changes - 1)) files"
        echo "git: add ."
        git add . &> /dev/null
        echo "git: commit -m \"$message\""
        git commit -m "$message" &> /dev/null
    fi
}

hasNewCommits() {
    local current_branch=$(git rev-parse --abbrev-ref HEAD)
    local remote_branch="origin/$current_branch"
    local has_remote=$(git branch -r | grep "$remote_branch" | wc -l)
    if [ $has_remote -eq 0 ]; then
        echo "error: No remote branch found"
        exit 1
    fi
    local has_commits=$(git log --oneline "$remote_branch..$current_branch" | wc -l | xargs)
    if [ $has_commits -eq 0 ]; then
        echo "info: No new commits to push"
        exit 1
    fi
    echo "$current_branch"
}

gitPush() {
    local message=$(hasNewCommits)
    if [[ "$message" =~ "info" || "$message" =~ "error" ]]; then
        echo "$message"
        exit 1
    fi
    echo "git: push origin $message"
    git push origin "$message" &> /dev/null
    echo $'end: git push completed'
}

main "$@"
