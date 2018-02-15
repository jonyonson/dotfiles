# ~/.bash_aliases for macOS
# ===============================

# easier navigation: .. & ...
alias ..="cd .."
alias ...="cd ../.."

# since I'm always accidentally doing it
alias :x="exit"

# mv, rm, cp
alias mv="mv -v"
alias rm="\rm -v -i"
alias cp="cp -v"

# safe alternative to `rm` | npm install -g trash-cli
hash trash >/dev/null 2>&1 || alias rm="trash"

# use coreutils 'ls' | brew install coreutils
hash gls >/dev/null 2>&1 || alias gls="ls"

# Color setup for gnu `ls` | http://github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)" # exports LS_COLORS

# list directory contents
if gls --color > /dev/null 2>&1; then
  colorflag="--color"
else
  colorflag="-G"
fi

alias ls='gls -N ${colorflag}'
alias lsd='ls -l | grep "^d"'    # only directories
alias ll='ls -oh ${colorflag}'   # long format (without group id)
alias l.='ls -A ${colorflag}'    # Show hidden files
alias ll.='ls -Aho ${colorflag}' # Show hidden files in long format

# ssh
alias copy_ssh='pbcopy < ~/.ssh/id_rsa.pub'

# git
alias git="hub"
alias g="git"
alias push="git push"
alias undopush="git push -f origin HEAD^:master" # undo a `git push`

# vim
alias v="vim"
alias rmswap="find $HOME/.vim/swaps -name '*.sw[a-z]' | xargs rm" # remove vim swap files

# npm
alias npm.leaves="npm ls --depth=0 -g"

# homebrew
alias cask="brew cask"

# show/hide hidden files in Finder
alias showdots="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hidedots="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# show/hide all desktop icons
alias clutter="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias declutter="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"

# recursively remove '.DS_Store' files
# http://jonbellah.com/recursively-remove-ds-store
alias ds_store.delete="find . -name '.DS_Store' -type f -delete"

# macvim
alias gv="gvim"
alias emptytrash="rm -rf ~/.Trash"
