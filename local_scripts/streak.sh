#!/bin/bash

# Cron has a limited PATH, so we make sure it can find git
export PATH=$PATH:/usr/local/bin:/opt/homebrew/bin

cd $HOME/github-streak/streak-repo || exit

echo "Contribution $(date)" >> streak-log.txt

git add .
git commit -m "Daily streak $(date)"
git push

echo "🔥 GitHub contribution added at $(date)!"