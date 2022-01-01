#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

echo "Build the project."
hugo -D
# hugo -t timeline # if using a theme, replace with `hugo -t <YOURTHEME>`

echo "Go To Public folder"
cd public

echo  "Setting for submodule commit"
git config --local user.name "minkj1992"
git config --local user.email "minkj1992@gmail.com"
git submodule update --init --recursive

echo "Add changes to git."

git add .

echo "Commit changes."
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

echo "Push blog(presentation) source and build repos."
git push origin main

# Come Back up to the Project Root
cd ..

echo "root repository Commit & Push"
git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin main