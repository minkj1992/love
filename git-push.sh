#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

printf "\033[0;32mBuild the project.\033[0m\n"
hugo
# hugo -t timeline # if using a theme, replace with `hugo -t <YOURTHEME>`


printf "\033[0;32m  Go To Public folder \033[0m\n"
cd public


printf "\033[0;32m  Setting for submodule commit \033[0m\n"
git config --local user.name "minkj1992"
git config --local user.email "minkj1992@gmail.com"
git submodule update --init --recursive


printf "\033[0;32m  Add changes to git. \033[0m\n"
git add .

printf "\033[0;32m  Commit changes.. \033[0m\n"
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

printf "\033[0;32m  Push blog(presentation) source and build repos. \033[0m\n"
git push -f origin main


printf "\033[0;32m  Come Back up to the Project Root \033[0m\n"
cd ..
echo $pwd

printf "\033[0;32m  root repository Commit & Push. \033[0m\n"
git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

git commit -m "$msg"

git push -f origin main