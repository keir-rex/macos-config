#!/bin/bash

# symlink for sublime
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/sublime
echo "export PATH=/usr/local/bin:$PATH" >> ~/.zshrc