#  ~/.bash_profile for macOS
# ==========================================

# source our dotfiles
for f in ~/.{exports,bash_aliases,functions,bash_prompt,env}; do
  [ -r "$f" ] && source "$f"
done
unset f

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"


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

# nvm completion
[ -r $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;
# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;
# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null
# Turn on recursive globbing (enables ** to recurse all directories)
shopt -s globstar 2> /dev/null

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u \w\a\]$PS1"
  ;;
*)
  ;;
esac


