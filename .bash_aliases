# ~/.bash_aliases for macOS
# ===============================

# easier navigation: .. & ...
alias ..="cd .."
alias ...="cd ../.."

# mv, rm, cp
alias mv="mv -v"
alias rm="\rm -v -i"
alias cp="cp -v"

# safe alternative to `rm` | npm install -g trash-cli
hash trash >/dev/null 2>&1 || alias rm="trash"

# use coreutils 'ls' | brew install coreutils
hash gls >/dev/null 2>&1 || alias gls="ls"

# always use color, even when piping (to awk, grep, etc)
if gls --color > /dev/null 2>&1; then color="--color"; else color="-G"; fi;
export CLICOLOR_FORCE=1

alias ls='gls -N ${color}'
alias lsd='ls -l | grep "^d"'     # only directories
alias ll='ls -oh ${color}'        # long format (without group id)
alias l.='ls -A ${color}'         # Show hidden files
alias ll.='ls -Aho ${color}'      # Show hidden files in long format

# git
eval "$(hub alias -s)" # alias git="hub"
alias g="git"
alias push="git push"
alias undopush="git push -f origin HEAD^:master" # undo a `git push`

# vim
alias v="vim"
alias gv="gvim" #macvim
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

# recursively remove '.DS_Store' files | https://goo.gl/YH43N2
alias ds_store.delete="find . -name '.DS_Store' -type f -delete"

# ssh
alias copy_ssh='pbcopy < ~/.ssh/id_rsa.pub'

# empty trash
alias emptytrash="rm -rf ~/.Trash"
