#!/bin/bash

# USAGE:
# ./release zsh zsh_1.0.deb

name="$1"
debfile="$2"

#aptly repo remove raspbian $name
#aptly repo add raspbian $debfile
#aptly publish update raspbian-wheezy

cd ~/.aptly/public
git add .
git commit -m "Update at $(date)"
git push
