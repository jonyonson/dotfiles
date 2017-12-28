#  ~/.bash_profile for macOS
# ==========================================

# Load our dotfiles
for file in ~/.{exports,functions,bash_aliases,bash_prompt,extra}; do
    [ -r "$file" ] && source "$file"
done
unset file

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

# color setup for gnu `ls` | http://github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)" # exports LS_COLORS

# `ls` emits color codes only when output is directed to a terminal.
export CLICOLOR_FORCE=1 # this flag forces the use of color, even when piping

shopt -s nocaseglob; # case-insensitive pathname expansion
shopt -s cdspell;    # corrects minor spelling errors in cd command


