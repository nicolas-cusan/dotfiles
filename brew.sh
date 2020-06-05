#!/usr/bin/env bash

echo -e "\\n\\nInstalling brew packages"
echo "=============================="

# Make sure we’re using the latest Homebrew.
brew update
​
# Upgrade any already-installed formulae.
brew upgrade

brew install \
  composer \
  coreutils \
  curl \
  ffmpeg  \
  git \
  grip \
  mackup \
  mysql \
  openssh \
  php@7.2 \
  python3 \
  rbenv \
  sass \
  yarn \
  wget \
  zsh \
  zsh-autosuggestions \
  /