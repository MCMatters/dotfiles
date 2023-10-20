#!/usr/bin/env bash

# Install homebrew if it wasn't installed.
if ! type "brew" > /dev/null; then
  xcode-select --install
  curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
fi

brew update
brew upgrade

brew install ansible
brew install ca-certificates
brew install coreutils
brew install curl
brew install dnsmasq
brew install gnupg
brew install go
brew install htop
brew install jq
brew install kubectx
brew install kubernetes-cli
brew install mas
brew install openssl@1.1
brew install openssl@3
brew install php@8.1
brew install pinentry
brew install pinentry-mac
brew install readline
brew install sqlite
brew install sshpass
brew install terraform
brew install wakeonlan
brew install wget
brew install yt-dlp
brew install zsh

# Casks
brew install --cask appcleaner
brew install --cask elmedia-player
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask iterm2
brew install --cask keka
brew install --cask macpass
brew install --cask notion
brew install --cask nrlquaker-winbox
brew install --cask obs
brew install --cask phpstorm
brew install --cask postman
brew install --cask raycast
brew install --cask steam
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc

brew cleanup
