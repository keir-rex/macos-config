#!/bin/bash -e

# Brew Dependancies
brew install zsh zsh-completions 
brew install git node bower 

# SDK Man
curl -s "https://get.sdkman.io" | bash
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.zshrc
