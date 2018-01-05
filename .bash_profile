#  ~/.bash_profile for macOS
# ==========================================

# Load our dotfiles
[ -r $HOME/.exports ]      && . $HOME/.exports
[ -r $HOME/.aliases ]      && . $HOME/.aliases
[ -r $HOME/.functions ]    && . $HOME/.functions
[ -r $HOME/.bash_prompt ]  && . $HOME/.bash_prompt
[ -r $HOME/.env ]          && . $HOME/.env

# Source some vendor files
[ -r $DOTFILES/lib/z.sh ]  && . $DOTFILES/lib/z.sh # loads z
[ -r $NVM_DIR/nvm.sh ]     && . $NVM_DIR/nvm.sh    # loads nvm

# Bash completion
if [ -f /usr/local/share/bash-completion/bash_completion ]; then
  . /usr/local/share/bash-completion/bash_completion
fi

# Bash completion for nvm
[ -r $NVM_DIR/bash_completion ] && . $NVM_DIR/bash_completion

# Color setup for gnu `ls` | http://github.com/trapd00r/LS_COLORS
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"
eval "$(gdircolors -b ~/.dircolors)" # exports LS_COLORS

# `ls` emits color codes only when output is directed to a terminal.
export CLICOLOR_FORCE=1 # this flag forces the use of color, even when piping

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;
# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null
# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null
