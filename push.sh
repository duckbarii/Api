#!/bin/bash

# Git user info
git config --global user.email "duckduckkimaarandi@duck.com"
git config --global user.name "duckbarii"

# Mark this directory as safe
git config --global --add safe.directory "$(pwd)"

# GitHub repo info
REPO_NAME="Api"
USERNAME="duckbarii"
ACCESS_TOKEN="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"
REPO_URL="https://${ACCESS_TOKEN}@github.com/${USERNAME}/${REPO_NAME}.git"

# Git operations
echo "# $REPO_NAME" > README.md
git init
git branch -M main
git add .
git commit -m "Initial commit"
git remote add origin "$REPO_URL"
git push -u origin main