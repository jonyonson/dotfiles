## JT's dotfiles

Includes my setup/config shenanigans for macOS. This repo contains my shell configuration with aliases and helper functions, git config, homebrew stuff, etc.

### Run `.bin/dotfiles` to create/update symlinks

### Install all formulae listed in `Brewfile`

```sh
$ brew bundle
```

### Output a list of any installed Homebrew formulae not listed in Brewfile:

```sh
$ brew bundle cleanup
```

### Pass the --force option to this command to uninstall these formulae:

```sh
$ brew bundle cleanup --force
```

### Bookmarks

-   [Creating a personal access token for the command line](https://help.github.com/en/articles/creating-a-personal-access-token-for-the-command-line)
-   [Caching your GitHub password in Git](https://help.github.com/en/articles/caching-your-github-password-in-git)
-   [Updating credentials from the OSX Keychain](https://help.github.com/en/articles/updating-credentials-from-the-osx-keychain)

*   [Homebrew and Python](https://docs.brew.sh/Homebrew-and-Python)

### Acknowledgements

-   [Paul Irish](https://github.com/paulirish/dotfiles)

-   [Nicolas Gallagher](https://github.com/necolas/dotfiles)
