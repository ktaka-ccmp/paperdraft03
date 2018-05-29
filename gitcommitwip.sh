#!/bin/bash

branch=$(git rev-parse --abbrev-ref HEAD)

##Commit commands for backup
git add paper.tex authors.tex abstract.tex body.tex bibliography.bib 
git add Figs
git add paper.pdf 
git add gitcommitwip.sh
git commit -m "As of $(date +"%Y%m%d%H%M") $1 "
git push --set-upstream origin $branch

