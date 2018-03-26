#  ~/.bash_profile for macOS
# ==========================================

# source our dotfiles
for f in ~/.{exports,bash_aliases,functions,bash_prompt,env}; do
  [ -r "$f" ] && source "$f"
done
unset f

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -r $NVM_DIR/bash_completion ] && source $NVM_DIR/bash_completion

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

# uninstall by removing these lines or running `tabtab uninstall serverless`
if [ -f "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash" ]; then
  source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash"
fi

# uninstall by removing these lines or running `tabtab uninstall sls`
if [ -f "$HOME.config/yarn/global/node_modules/tabtab/.completions/sls.bash" ]; then
  source "$HOME/.config/yarn/global/node_modules/tabtab/.completions/sls.bash"
fi

# Autocorrect on directory names to match a glob.
shopt -s dirspell 2> /dev/null

# recursive globbing (enables ** to recurse all dirs)
shopt -s globstar 2> /dev/null

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob;

# Correct spelling errors in arguments supplied to cd
shopt -s cdspell;

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
  PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u \w\a\]$PS1"
  ;;
*)
  ;;
esac


