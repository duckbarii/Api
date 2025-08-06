#!/bin/bash

read -sp "Enter your GitHub token: " ACCESS_TOKEN
echo

git config --global user.email "duckduckkimaarandi@duck.com"
git config --global user.name "duckbarii"
git config --global --add safe.directory "$(pwd)"

REPO_NAME="Api"
USERNAME="duckbarii"
REPO_URL="https://${ACCESS_TOKEN}@github.com/${USERNAME}/${REPO_NAME}.git"

echo "# $REPO_NAME" > README.md
git init
git branch -M main
git add .
git commit -m "Initial commit"
git remote add origin "$REPO_URL"
git push -u origin main