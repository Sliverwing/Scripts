#/bin/bash

# osx-terminal-themes
git clone https://github.com/lysyi3m/osx-terminal-themes ~/.osx-terminal-themes

#
brew install vim tmux polipo

# brew cask
brew cask install google-chrome
brew cask install neteasemusic
brew cask install visual-studio-code

# proxy
echo "socksParentProxy=localhost:1080" > /usr/local/etc/polipo.conf
echo "alias polipo=\"polipo -c /var/local/etc/polipo.conf\"" >> ~/.zshrc
