#  ~/.bash_profile for macOS
# ==========================================

# source our dotfiles
for file in ~/.{exports,aliases,functions,bash_prompt,env}; do
  [ -r "$file" ] && source "$file"
done
unset file

# https://github.com/rupa/z
source ~/.dotfiles/z.sh

# https://formulae.brew.sh/formula/bash-completion@2
# https://github.com/scop/bash-completion
 export BASH_COMPLETION_COMPAT_DIR="$(brew --prefix)/etc/bash_completion.d"
[[ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]] && \
    . "$(brew --prefix)/etc/profile.d/bash_completion.sh"

# https://github.com/creationix/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


## LS OUTPUT COLOR SETUP ##
## --------------------- ##

# use gnu `ls` if installed -- `brew install coreutils`
command -v gdircolors >/dev/null 2>&1 || alias gdircolors="dircolors"

# exports LS_COLORS
eval "$(gdircolors -b ~/.dircolors)" # http://github.com/trapd00r/LS_COLORS

## BASH HISTRORY ##
## ------------- ##

# use standard ISO 8601 timestamp
export HISTTIMEFORMAT='%F %T '

# keep history up to date, across sessions, in realtime | https://goo.gl/MyufAc
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export HISTCONTROL="erasedups:ignoreboth"  # no duplicate entries
export HISTSIZE=-1                         # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE              # big big history
shopt -s histappend                        # append to history, don't overwrite it
shopt -s cmdhist                           # save multi-line commands as one command

# save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# `!!<space>` will call the last command
bind Space:magic-space

## IMPROVED `cd` COMMAND ##
## --------------------- ##

# autocorrect on directory names to match a glob
shopt -s dirspell 2> /dev/null

# recursive globbing (enables ** to recurse all dirs)
shopt -s globstar 2> /dev/null

# case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# correct spelling errors in arguments supplied to cd
shopt -s cdspell;
