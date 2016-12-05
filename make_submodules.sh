#!/bin/bash
for plugin in `ls bundle`;do
    pushd "bundle/"$plugin > /dev/null;
    echo "git rm --cached bundle/$plugin"
    echo "git submodule add "$(echo $(git remote -v 2>&1) |sed 's/git\:/https\:/;'| awk '{print $2}')" bundle/$plugin"
    popd 2>&1 > /dev/null 
done

