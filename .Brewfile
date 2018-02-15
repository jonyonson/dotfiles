# https://github.com/Homebrew/homebrew-bundle
# `brew bundle cleanup --force --global` uninstalls / installs formulae to match this file
# `brew bundle --global` installs all the formulae / upgrades the formulae if one is available

tap "caskroom/cask"
tap "caskroom/fonts"
tap "caskroom/versions"
tap "homebrew/bundle"
tap "homebrew/core"
tap "martido/brew-graph"

# homebrew installed packages
# =================================
brew "bash"
brew "bash-completion@2"
brew "brew-cask-completion"
brew "coreutils"
brew "diff-so-fancy"
brew "findutils", args: ["with-default-names"]
brew "fish"
brew "flow"
brew "git"
brew "hub"
brew "gnu-sed", args: ["with-default-names"]
brew "lastpass-cli", args: ["with-pinentry"]
brew "python3"
brew "ssh-copy-id"
brew "terminal-notifier"
brew "tree"
brew "vim", args: ["with-override-system-vi", "with-python3"]
brew "wget"
brew "yarn", args: ["without-node"]
brew "youtube-dl"
brew "watchman"
brew "z"

# `brew graph --installed --highlight-leaves | fdp -Tpng -ograph.png`
# `open graph.png`
brew "graphviz"
brew "brew-graph"

# http://geoff.greer.fm/ag
# usage: ag [FILE-TYPE] [OPTIONS] PATTERN [PATH]
brew "the_silver_searcher"

# https://github.com/vvo/gifify
# npm install -g gifify
brew "ffmpeg", args: ["with-libass", "with-fontconfig"]
brew "imagemagick", args: ["with-fontconfig"]
brew "giflossy"

# install macOS App Store apps
# `mas install <app>`
brew "mas"

# brew-cask installed Applications
# =================================
cask_args appdir: "/Applications"
cask "adobe-acrobat-reader"
cask "android-studio"
cask "alfred"
cask "chrome-devtools"
cask "dash"
cask "dropbox"
cask "firefox"
cask "google-chrome"
cask "google-chrome-canary"
cask "hyper"
cask "intellij-idea"
cask "iterm2"
cask "kindle"
cask "macvim"
cask "now"
cask "pycharm-ce"
cask "slack"
cask "spotify"
cask "vlc"
cask "visual-studio-code"

# brew-cask installed Fonts
# =================================
cask "font-inconsolata-for-powerline"
cask "font-menlo-for-powerline"
cask "font-source-code-pro"
cask "font-fira-code"
cask "font-hack"

# macOS App Store Apps
# =================================
mas "Dashlane", id: 552383089
mas "LastPass", id: 926036361
mas "Pocket", id: 568494494
mas "Todoist", id: 585829637
mas "Twitter", id: 409789998
#mas "Xcode", id: 497799835
