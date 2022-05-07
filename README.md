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

#  fatal: your current branch 'main' does not have any commits yet
$ git add . && git commit -m"Initial commit"
$ hugo -D

```

## pull

```
$ brew install hugo
$ gh repo clone minkj1992/love
$ cd love
$ git submodule add https://github.com/dillonzq/LoveIt.git themes/LoveIt
'themes/LoveIt' already exists in the index
$ rm .gitmodules && touch .gitmodules
$ git rm --cached themes/LoveIt
$ rm -rf themes/LoveIt
$ git submodule add https://github.com/dillonzq/LoveIt.git themes/LoveIt
$ rm -rf public
$ git rm --cached public
$ git submodule add https://github.com/minkj1992/minkj1992.github.io public

$ hugo server -D
```

## run (local)

```bash
$ hugo server -D
```

## push

```bash
sh git-push.sh <COMMIT_MSG>
```

## markdown tip

- img with naming

```html
<figure>
  <img src="/images/lighthouse.jpg" />
  <figcaption>
    <h4>Lighthouse (figure)</h4>
  </figcaption>
</figure>
```

```markdown
{{< image src="/images/lighthouse.jpg" caption="Lighthouse (`image`)" src_s="/images/lighthouse-small.jpg" src_l="/images/lighthouse-large.jpg" >}}
```

- `admonition`
  - note
  - abstract, summary, tldr
  - info
  - tip
  - success
  - question
  - warning
  - failure
  - danger
  - bug
  - example
  - quote

```markdown
{{< admonition note "Heading IDs" >}}
To add a custom heading ID, enclose the custom ID in curly braces on the same line as the heading:
```

- `mermaid` (sequence diagram)

```markdown
{{< mermaid >}}
sequenceDiagram
participant Alice
participant Bob
Alice->>John: Hello John, how are you?
loop Healthcheck
John->John: Fight against hypochondria
end
Note right of John: Rational thoughts <br/>prevail...
John-->Alice: Great!
John->Bob: How about you?
Bob-->John: Jolly good!
{{< /mermaid >}}
```

- `typeit`

```markdown
{{< typeit >}}
This is a _paragraph_ with **typing animation** based on [TypeIt](https://typeitjs.com/)...
{{< /typeit >}}
```

- `typeit with code`

```markdown
{{< typeit code=java >}}
public class HelloWorld {
public static void main(String []args) {
System.out.println("Hello World");
}
}
{{< /typeit >}}
```

## update `lastmod`

> https://makewithhugo.com/add-a-last-edited-date/
