#  ~/.bash_profile for macOS
# ==========================================

# source our dotfiles
for file in ~/.{exports,bash_aliases,functions,bash_prompt,env}; do
  [ -r "$file" ] && source "$file"
done
unset file

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -r $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

##
## Command-line completion
##

# bash completion
if [ -f "$(brew --prefix)/share/bash-completion/bash_completion" ]; then
  source "$(brew --prefix)/share/bash-completion/bash_completion"
fi

# homebrew completion
if [ -f "$(brew --prefix)/etc/bash_completion.d/brew" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/brew"
fi

# hub completion
if [ -f "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh" ]; then
  source "$(brew --prefix)/etc/bash_completion.d/hub.bash_completion.sh"
fi

##
## bash_history
##

# Enable history expansion with space
# E.g. typing !!<space> will replace the !! with your last command
bind Space:magic-space

# Use standard ISO 8601 timestamp
# %F equivalent to %Y-%m-%d
# %T equivalent to %H:%M:%S (24-hours format)
export HISTTIMEFORMAT='%F %T '

# keep history up to date, across sessions, in realtime | https://goo.gl/MyufAc
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"
export HISTCONTROL="erasedups:ignoreboth"  # no duplicate entries
export HISTSIZE=100000                     # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE              # big big history
shopt -s histappend                        # append to history, don't overwrite it
shopt -s cmdhist                           # save multi-line commands as one command

# save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

##
## better `cd`'ing
##

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# recursive globbing (enables ** to recurse all dirs)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;
