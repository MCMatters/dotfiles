#!/usr/bin/env bash

# TODO: move to "utilities"
if [[ "$(uname -s)" == "Darwin" ]]; then
  if [[ ! "$(command -v brew)" ]]; then
    xcode-select --install
    curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
  fi

  brew update
  brew install git
elif [[ "$(uname -s)" == "Linux" ]]; then
  sudo apt update
  sudo apt install -y --no-install-recommends git
fi

GIT_FILES=( ".gitignore" ".gitconfig" )

for git_file in "${GIT_FILES[@]}"
do
  if [ ! -f "$HOME/$git_file" ]; then
    ln -s "$PWD/$git_file" "$HOME/$git_file"
  fi
done

