#!/bin/bash

# Change to your repository's directory (replace with your actual path)
cd /path/to/your/repo

# Pull the latest changes from the remote repository
echo "Pulling latest changes from GitHub..."
git pull origin main

# Add all modified, deleted, and untracked files
echo "Staging all changes..."
git add .

# Commit the changes with a default or provided message
commit_message=${1:-"Update files"}
echo "Committing with message: '$commit_message'"
git commit -m "$commit_message"

# Push changes to the remote repository
echo "Pushing changes to GitHub..."
git push origin main

echo "Update complete!"

