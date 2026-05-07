#!/bin/bash

echo "🚀 GitHub Streak Setup"

read -p "Enter your GitHub repo URL: " repo

mkdir -p $HOME/github-streak
cd $HOME/github-streak

git clone $repo streak-repo

# Copy the streak script to the new directory
cp "$OLDPWD/streak.sh" $HOME/github-streak/
chmod +x $HOME/github-streak/streak.sh

# Set up the cron job to run every day at 10:00 AM
CRON_JOB="0 10 * * * $HOME/github-streak/streak.sh >> $HOME/github-streak/cron.log 2>&1"

# Check if the cron job already exists to avoid duplicates, then add it
(crontab -l 2>/dev/null | grep -v "streak.sh"; echo "$CRON_JOB") | crontab -

echo "✅ Setup complete!"
echo "Your GitHub streak is now set to run 100% automatically every day at 10:00 AM."
echo "You can check the logs at $HOME/github-streak/cron.log"