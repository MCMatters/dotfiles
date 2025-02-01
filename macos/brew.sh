#!/usr/bin/env bash

if [[ "$(uname -s)" != "Darwin" ]]; then
  echo "This script only for macOS system"

  exit 1;
fi

# Install homebrew if it wasn't installed.
if [[ ! "$(command -v brew)" ]]; then
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
brew install eza
brew install ffmpeg
brew install gnupg
brew install go
brew install htop
brew install jq
brew install kubectx
brew install kubernetes-cli
brew install lua
brew install mas
brew install neovim
brew install nmap
brew install openssl@1.1
brew install openssl@3
brew install opentofu
brew install php@8.1
brew install pinentry
brew install pinentry-mac
brew install readline
brew install starship
brew install sqlite
brew install sshpass
brew install tmux
brew install wakeonlan
brew install wget
brew install yt-dlp
brew install zoxide
brew install zsh

# Casks
brew install --cask appcleaner
brew install --cask betterdisplay
brew install --cask elmedia-player
brew install --cask firefox
brew install --cask font-sauce-code-pro-nerd-font
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask hammerspoon
brew install --cask jetbrains-toolbox
brew install --cask keka
brew install --cask macpass
brew install --cask monitorcontrol
brew install --cask obs
brew install --cask obsidian
brew install --cask postman
brew install --cask raycast
brew install --cask steam
brew install --cask todoist
brew install --cask transmission
brew install --cask visual-studio-code
brew install --cask vlc
brew install --cask warp
brew install --cask wezterm
brew install --cask winbox
brew install --cask zed

brew cleanup
