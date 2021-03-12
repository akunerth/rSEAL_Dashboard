#!/bin/bash
git init
git commit -m "$(date +"%D %T")"
git push --set-upstream https://github.com/akunerth/rSEAL_Dashboard.git master
git push -u https://github.com/akunerth/rSEAL_Dashboard.git
