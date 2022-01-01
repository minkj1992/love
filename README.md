# love yourself

## init
```bash
$ hugo new site love
$ cd love
$ git init
$ git branch -M main
# git remote add origin <YOUR ROOT REPOSITORY>
$ git remote add origin https://github.com/minkj1992/love.git
# git submodule add <THEME REPOSITORY> themes/<THEME_NAME>
$ git submodule add https://github.com/dillonzq/LoveIt.git themes/LoveIt
$ git config user.email minkj1992@gmail.com
$ git config user.name "minkj1992"

# git submodule add <YOUR_ID.github.io> public
$ git submodule add https://github.com/minkj1992/minkj1992.github.io public

# if you want to add image to site home
$ mkdir -p assets/images
# after this command, paste your profile & log image to images and change config.toml

# (OPTIONAL) If you want to change css font-famiully and size, customize scss file.
$ touch assets/_override.scss


# draft must be falsed
$ hugo new posts/first_post.md
$ hugo -D

```

## run (local)
```bash
$ hugo server -D
```

## push
```bash
sh git-push.sh <COMMIT_MSG>
```
