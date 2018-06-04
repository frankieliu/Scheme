# Scheme

## installing racket or maybe stick with chicken

sudo add-apt-repository ppa:plt/racket
sudo apt update
sudo apt install racket

## Using the repl

```bash
rlwrap csi
```

# Repo

git clone https://github.com/frankieliu/Scheme

# Chapter 1
## factorial

Use

``` scheme
(load factorial.scm)
(factorial 10)
```	

# Github
## Password
Saves the password in a text file, ~/.git-credentials
```bash
git config --global credential.helper store
```

This will store your password
https://KiplingLiu:<the password>7@github.com

# Emacs
## markdown mode
1. Add melpa to .emacs
2. Install markdown and markdown-preview-mode
3. Install markdown (command)
4. Use C-c C-c p to get preview

# Markdown
## markdown comments

```markdown
(empty-line)
[comment]: # comment here
[comment]: # another commentp
```

[comment]: # Local Variables:
[comment]: # eval: (markdown-preview-mode)
[comment]: # eval: (add-to-list 'markdown-preview-stylesheets "https://raw.githubusercontent.com/richleland/pygments-css/master/emacs.css")
[comment]: # End:
