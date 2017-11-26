#  ~/.bash_profile for macOS
# ==========================================

export DOTFILES=$HOME/.dotfiles
export DROPBOX=$HOME/Dropbox
export NVM_DIR=$HOME/.nvm

# PATH=/usr/local/bin:$PATH
PATH=$PATH:~/bin
export PATH

# source our dotfiles
# [ -r $HOME/.extra ]         && . $HOME/.extra
# [ -r $HOME/.functions ]     && . $HOME/.functions
[ -r $HOME/.bash_aliases ]  && . $HOME/.bash_aliases
[ -r $HOME/.bash_prompt ]   && . $HOME/.bash_prompt

# source some vendor files
[ -r $DOTFILES/lib/z.sh ]   && . $DOTFILES/lib/z.sh # loads z
[ -s $NVM_DIR/nvm.sh ]      && . $NVM_DIR/nvm.sh    # loads nvm

# bash completion
# if [ -f $(brew --prefix)/share/bash-completion/bash_completion ]; then
#     source $(brew --prefix)/share/bash-completion/bash_completion
# fi

# bash completion for Git, npm, Homebrew, Hugo, youtube-dl, tmux
if [ -d $(brew --prefix)/etc/bash_completion.d ]; then
    for file in $(brew --prefix)/etc/bash_completion.d/*; do
        source $file
    done
    unset file
fi

# bash completion for nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# https://wiki.archlinux.org/index.php/Color_output_in_console#man
export LESS_TERMCAP_mb=$'\e[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\e[1;33m'     # begin blink
export LESS_TERMCAP_so=$'\e[01;44;37m' # begin reverse video
export LESS_TERMCAP_us=$'\e[01;37m'    # begin underline
export LESS_TERMCAP_me=$'\e[0m'        # reset bold/blink
export LESS_TERMCAP_se=$'\e[0m'        # reset reverse video
export LESS_TERMCAP_ue=$'\e[0m'        # reset underline
export GROFF_NO_SGR=1                  # for konsole and gnome-terminal

# vim as manpager | https://zameermanji.com/blog/2012/12/30/using-vim-as-manpager/
#export MANPAGER="/bin/sh -c \"col -b | vim -c 'set ft=man ts=8 nomod nolist nonu noma' -\""
export MANPAGER='less -s -M +Gg'
export EDITOR='vim' # default editor
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
export ICLOUD="$HOME/Library/Mobile\ Documents/com~apple~CloudDocs"

# color setup for gnu `ls` | http://github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)" # exports LS_COLORS

# `ls` emits color codes only when output is directed to a terminal.
# Setting this flag forces the use of color, even when piping.
export CLICOLOR_FORCE=1

shopt -s nocaseglob; # case-insensitive pathname expansion
shopt -s cdspell;    # corrects minor spelling errors in cd command
