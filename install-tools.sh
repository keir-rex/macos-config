#!/usr/bin/env bash

if ! hash brew 2>/dev/null; then
  echo "Installing Homebrew"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install CLI tools
brew install git coreutils findutils gnu-tar gnu-sed gawk gnutls gnu-indent gnu-getopt grep tree ag openssh gpg watch
brew install vim --with-override-system-vi screen

# Install newer shells
brew install bash zsh zsh-completions zsh-syntax-highlighting

# Install programming utils
brew install go node python3
brew cask install iterm2

# Install cloud-utils
brew cask install google-cloud-sdk minikube minishift
brew install awscli kubernetes-helm openshift-cli docker ansible

# Install usability utilities
brew cask install spectacle karabiner-elements

# Install full GUI applications
brew cask install spotify vscodium google-chrome 1password postman 1password-cli

brew cleanup

# Copy spectacle configuration to appropriate directory
mv ./dotfiles/Shortcuts.json ~/Library/Application Support\ Spectacle/Shortcuts.json

# Change to zsh and install oh-my-zsh
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Add this to ~/.zshrc
# fpath=(/usr/local/share/zsh-completions $fpath)
