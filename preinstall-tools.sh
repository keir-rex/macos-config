#!/bin/bash

# SDK Man
curl -s "https://get.sdkman.io" | bash
echo 'source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.zshrc

# Brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

