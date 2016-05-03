#!/bin/bash
git config --global user.email "tarunzweb@gmail.com"
git config --global user.name "Travis CI"

# deploy to gh-pages
cd coverage/lcov-report
echo 'inside lcov-report'

git init
git add .
echo 'added all files'

git commit -m "Deploy to Github Pages"
echo 'commit all files, pushing to gh-pages'

git push --force --quiet "https://${GITHUB_TOKEN}@$github.com/${GITHUB_REPO}.git" master:gh-pages > /dev/null 2>&1
echo 'push is complete'