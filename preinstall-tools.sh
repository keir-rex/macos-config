#!/bin/bash -e

WORKING_DIR=`pwd`
ITERM_URL=https://iterm2.com/downloads/stable/iTerm2-3_1_7.zip
SUBLIME_URL=https://download.sublimetext.com/Sublime%20Text%20Build%203176.dmg
BREW_URL=https://raw.githubusercontent.com/Homebrew/install/master/install

# Brew
/usr/bin/ruby -e "$(curl -fsSL $BREW_URL)"

# Sublime install
curl $SUBLIME_URL > ~/Downloads/sublime.dmg
open ~/Downloads/sublime.dmg

# iTerm
curl $ITERM_URL > ~/Downloads/iterm2.zip
unzip iterm2.zip -d ~/Downloads
cp -r ~/Downloads/iTerm.app /Applications