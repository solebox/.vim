#!/bin/bash
pushd bundle > /dev/null 
for plugin in `ls`;do
    pushd $plugin > /dev/null;
    echo "* [$plugin]("$(echo $(git remote -v 2>&1) |sed 's/git\:/https\:/;'| awk '{print $2}')")"
    popd 2>&1 > /dev/null 
done
popd 2>&1 > /dev/null 

