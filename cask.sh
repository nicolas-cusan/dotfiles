#!/bin/sh

echo -e "\\n\\nInstalling Cask binaries"
echo "=============================="
​
# Install command-line tools using Homebrew.
# Install Brew and Cask manually
​
# Make sure we’re using the latest Homebrew.
brew update
​
# Upgrade any already-installed formulae.
brew upgrade
​
# Fonts
brew tap homebrew/cask-fonts
# brew cask install font-fira-code
# brew cask install font-m-plus
brew cask install font-meslo-for-powerline
# brew cask install font-iosevka
brew cask install font-source-code-pro
​
# Casks
brew cask install authy
brew cask install autofirma
brew cask install bartender
brew cask install bitwarden
brew cask install calibre
brew cask install caret
brew cask install daisydisk
brew cask install dash
brew cask install diffmerge
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install forklift
brew cask install google-chrome
brew cask install imagealpha
brew cask install imageoptim
brew cask install iterm2
brew cask install jdownloader
brew cask install jumpcut
brew cask install kaleidoscope
brew cask install little-snitch
brew cask install monodraw
brew cask install nextcloud
brew cask install postman
brew cask install qlcolorcode
brew cask install qlimagesize
brew cask install qlmarkdown
brew cask install qlstephen
brew cask install quicklook-csv
brew cask install quicklook-json
brew cask install rectangle
brew cask install rightfont
brew cask install robo-3t
brew cask install signal
brew cask install sketch
brew cask install skype
brew cask install slack
brew cask install soulver
brew cask install spotify
brew cask install sublime-text
brew cask install superduper
brew cask install suspicious-package
brew cask install the-unarchiver
brew cask install thyme
brew cask install transmission
brew cask install vagrant
brew cask install virtualbox
brew cask install visual-studio-code
brew cask install vlc
brew cask install xscope
brew cleanup