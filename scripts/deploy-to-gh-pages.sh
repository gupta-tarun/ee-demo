#!/bin/bash
git config --global user.email "tarunzweb@gmail.com"
git config --global user.name "Travis CI"

# deploy to gh-pages
cd coverage/lcov-report
git init
git add .
git commit -m "Deploy to Github Pages"
git push --force --quiet "https://${GITHUB_TOKEN}@$github.com/${GITHUB_REPO}.git" master:gh-pages > /dev/null 2>&1
