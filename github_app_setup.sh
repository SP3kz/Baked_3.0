#!/bin/bash

# GitHub App setup for Baked 3.0

# Step 1: Install GitHub CLI (gh)
echo "Installing GitHub CLI..."
brew install gh

# Step 2: Authenticate with GitHub
echo "Authenticating with GitHub..."
gh auth login --with-token

# Step 3: Create GitHub App for Baked 3.0
echo "Creating GitHub App..."
gh api --method POST /repos/{owner}/{repo}/hooks --field config.url="http://your-webhook-url" --field events="push,pull_request"

# Step 4: Set up GitHub Actions
echo "Setting up GitHub Actions..."
git add .github/
git commit -m "Automate GitHub App setup and workflows"
git push origin main

echo "GitHub app is connected and workflows are automated!"
