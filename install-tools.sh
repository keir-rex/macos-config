#!/bin/bash -e

SDK_MAN_URL=https://get.sdkman.io

# Brew Dependancies
brew install zsh zsh-completions 
brew install git node bower 

# SDK Man
curl -s "$SDK_MAN_URL" | bash
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.zshrc

# Global NPM Packages
npm install -g nd

# Spectacle
curl https://s3.amazonaws.com/spectacle/downloads/Spectacle+1.2.zip > ~/Downloads/spectacle.zip
cp -r ~/Downloads/Spectacle.app /Applications