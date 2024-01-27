#!/bin/zsh

desired_current_branch="development"
current_branch=$(git branch --show-current)

# Check if the current branch is the desired branch
if [ "$current_branch" == "$desired_current_branch" ]; then
  echo "You are on the $desired_current_branch branch."
else
  echo "You are not on the $desired_current_branch branch."
  exit -1
fi

flutter clean
git add .
git commit -m "Deployment push."
git push

git checkout production
git merge development
flutter build web --release
mv web docs
git add .
git commit -m "Deployment push."
git push

git checkout development