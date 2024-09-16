#!/bin/bash

# Step 1: Build the Hugo site
hugo --minify

# Step 2: Copy contents from public/ to docs/
cp -R public/* ../

# Step 3: Commit and push the changes
cd ..
git add .
git commit -m "Deploy Hugo site to GitHub Pages"
git push origin main  # Adjust the branch name if needed
