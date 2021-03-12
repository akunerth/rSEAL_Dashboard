#!/bin/bash
path = /Users/akunerth/Box/SEAL-r/rSEAL_Dashboard

git add "$path"
git init
git commit -m "$(date +"%D %T")"
git push --set-upstream ssh://github.com/akunerth/rSEAL_Dashboard.git master
git push -u ssh://github.com/akunerth/rSEAL_Dashboard.git
