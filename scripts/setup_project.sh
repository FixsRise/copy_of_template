#!/bin/bash

# Variables
TEMPLATE_REPO="https://github.com/your-org/template-repo.git"
NEW_REPO_NAME=$1

# Clone the template repository
git clone $TEMPLATE_REPO $NEW_REPO_NAME

# Navigate to the new repository directory
cd $NEW_REPO_NAME

# Remove the existing Git history
rm -rf .git

# Initialize a new Git repository
git init

# Create an initial commit
git add .
git commit -m "Initial commit from template"
