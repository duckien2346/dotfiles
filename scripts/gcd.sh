#!/bin/bash

current=$(git rev-parse --abbrev-ref HEAD)
target="${1-'main'}"

git checkout $target
git pull origin $target
git branch -D $current
