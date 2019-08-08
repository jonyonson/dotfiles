# JT's dotfiles

macOS config files for bash, vim, git, etc.

### Run `.bin/dotfiles` to create/update symlinks

### Install all formulae listed in `.brewfile`

```sh
$ brew bundle --file=~/.brewfile
```

### Output a list of any installed Homebrew formulae not listed in Brewfile:

```sh
$ brew bundle cleanup --file=~/.brewfile
```

### Pass the --force option to this command to uninstall these formulae:

```sh
$ brew bundle cleanup --force --file=~/.brewfile
```

### Acknowledgements

- Paul Irish [(@paulirish)](https://github.com/paulirish) - [https://github.com/paulirish/dotfiles](https://github.com/paulirish/dotfiles)

- Nicolas Gallagher [(@necolas)](https://github.com/necolas) - [https://github.com/necolas/dotfiles](https://github.com/necolas/dotfiles)
