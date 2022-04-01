#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "master" ]; then
    echo "更新..."
    git pull

    echo "更新...submodule"
    git pull --recurse-submodules
fi
