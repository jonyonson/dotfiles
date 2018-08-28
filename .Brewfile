# https://github.com/Homebrew/homebrew-bundle

# mv ~/.brewfile to ~/Brewfile in order to run any `brew bundle` command

# Install all formulae listed in ~/Brewfile
# $ brew bundle

# Output a list of any installed Homebrew formulae not listed in Brewfile:
# $ brew bundle cleanup

# Pass the --force option to this command to uninstall these formulae:
# $ brew bundle cleanup --force


# Homebrew Taps
# ===================================
tap "homebrew/bundle"
tap "homebrew/cask"
tap "homebrew/cask-fonts"
tap "homebrew/core"
tap "martido/brew-graph"

# Homebrew installed packages
# ===================================
brew "bash"
brew "bash-completion@2"
brew "brew-cask-completion"
brew "brew-graph" #1
brew "coreutils"
brew "diff-so-fancy"
brew "findutils", args: ["with-default-names"]
brew "fish"
brew "git"
brew "graphviz" #1
brew "hub"
# brew "mas" #2 # wait till mojave is out of beta
brew "python3"
brew "the_silver_searcher" #  #3
brew "tree"
brew "vim"
brew "wget"
brew "yarn", args: ["without-node"]
brew "youtube-dl"

# Usage
# ===================================
#1 $ brew graph --installed --highlight-leaves | fdp -Tpng -ograph.png
#1 $ open graph.png
#2 https://github.com/mas-cli/mas
#3 http://geoff.greer.fm/ag
#3 $ ag [FILE-TYPE] [OPTIONS] PATTERN [PATH]

# Homebrew installed macOS Applications
# =====================================
cask_args appdir: "/Applications"
cask "alfred"
cask "carbon-copy-cloner"
cask "dash"
cask "dropbox"
cask "firefox"
cask "firefox-developer-edition"
cask "google-chrome"
cask "google-chrome-canary"
cask "hyper"
cask "iterm2"
cask "kindle"
cask "macvim"
cask "mongodb-compass"
cask "now"
cask "slack"
cask "spotify"
cask "vlc"
cask "visual-studio-code"

# Homebrew installed fonts
# ===================================
cask "font-source-code-pro"
cask "font-fira-code"
cask "font-hack"

# macOS App Store Apps
# ===================================
# mas "LastPass", id: 926036361
# mas "Pocket", id: 568494494
# mas "Todoist", id: 585829637
# mas "Xcode", id: 497799835
# mas "Spark", id: 1176895641
# mas "GIPHY CAPTURE", id: 668208984
# mas "Numbers", id: 409203825
# mas "Pages", id: 409201541
