#  ~/.bashrc for macOS
# ==========================================

[ -n "$PS1" ] && source $HOME/.bash_profile

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[ -f /Users/jonathan/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash ] && . /Users/jonathan/.config/yarn/global/node_modules/tabtab/.completions/serverless.bash
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[ -f /Users/jonathan/.config/yarn/global/node_modules/tabtab/.completions/sls.bash ] && . /Users/jonathan/.config/yarn/global/node_modules/tabtab/.completions/sls.bash