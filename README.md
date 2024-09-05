# dotfiles

install by following the command

```
sh -c "$(wget https://raw.githubusercontent.com/isumitkrsaha/dotfiles/main/install.sh -O -)"
```

## Ubuntu/Debian VM Git prompt support

```
# >>> Git Prompt Support
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\e[91m\] $(parse_git_branch)\[\e[00m\]$ '
# <<< end
```
