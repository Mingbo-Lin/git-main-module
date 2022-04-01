#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "master" ]; then
    git pull

    echo "\n更新...submodule"
    git pull --recurse-submodules
fi
