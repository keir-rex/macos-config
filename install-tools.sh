#!/usr/bin/env bash

if !hash brew 2>/dev/null; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install CLI tools
brew install git coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep tree ag openssh gpg
brew install vim --with-override-system-vi screen

# Install newer shells
brew install bash zsh zsh-completions

# Install programming utils
brew install go node
brew cask install iterm2

# Install cloud-utils
brew install awscli google-cloud-sdk 
brew cask install minikube minishift kubernetes-helm

# Install usability utilities
brew cask install spectacle karabiner-elements bettertouchtool

# Install full GUI applications
brew cask install spotify vscodium google-chrome 1password

brew cleanup

# Copy spectacle configuration to appropriate directory
mv ./dotfiles/Shortcuts.json ~/Library/Application Support\ Spectacle/Shortcuts.json

# Change to zsh and install oh-my-zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add this to ~/.zshrc
# fpath=(/usr/local/share/zsh-completions $fpath)