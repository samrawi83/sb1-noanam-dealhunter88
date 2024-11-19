#!/bin/bash

# Reassemble the bundle
cat sb1-noanam-dealhunter88.bundle.gz.part-* > sb1-noanam-dealhunter88.bundle.gz

# Decompress the bundle
gunzip sb1-noanam-dealhunter88.bundle.gz

# Create a new directory for the project
mkdir sb1-noanam-dealhunter88
cd sb1-noanam-dealhunter88

# Initialize a new git repository
git init

# Fetch the contents from the bundle
git fetch ../sb1-noanam-dealhunter88.bundle main:main

# Checkout the main branch
git checkout main

# Set up the remote (replace YOUR_GITHUB_USERNAME with your actual GitHub username)
git remote add origin https://github.com/samrawi83/sb1-noanam-dealhunter88.git

echo "Bundle reassembled and repository set up successfully!"
echo "To push to GitHub, use: git push -u origin main"
echo "Make sure to replace YOUR_GITHUB_USERNAME in this script with your actual GitHub username before running."

