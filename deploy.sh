#!/bin/zsh

desired_current_branch="development"
current_branch=$(git branch --show-current)

# Check if the current branch is the desired branch
if [ "$current_branch" -ne "$desired_branch" ]; then
  echo "You are not on the $desired_branch branch."
  exit -1
fi

flutter clean
git add .
git commit -m "Deploy push."
git push

git checkout deploy
git merge development
git push

git checkout development