#!/bin/sh

branch="$(git rev-parse --abbrev-ref HEAD)"

if [ "$branch" = "master" ]; then
#    cd {super repo location}
#    git submodule update --init --recursive
    echo update submodule ...
    git submodule update --remote --merge
#    echo Hi
#
#    git add externals/git-sub-module
#    git commit -m "Update submodule: git-sub-module"
#    git push
#
#    echo "更新..."
#    git pull --recurse-submodules
fi
