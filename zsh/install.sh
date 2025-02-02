#!/usr/bin/env bash

# TODO: move to "utilities"
if [[ "$(uname -s)" == "Darwin" ]]; then
  if [[ ! "$(command -v brew)" ]]; then
    xcode-select --install
    curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
  fi

  brew update
  brew install zsh
elif [[ "$(uname -s)" == "Linux" ]]; then
  sudo apt update
  sudo apt install -y --no-install-recommends zsh
fi

# Install oh-my-zsh
curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | ZSH="" bash

# Install plugins
git clone https://github.com/zsh-users/zsh-completions "${ZSH_CUSTOM:-${ZSH:-$HOME/.oh-my-zsh}/custom}"/plugins/zsh-completions 2>/dev/null
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-autosuggestions 2>/dev/null
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/zsh-syntax-highlighting 2>/dev/null
git clone https://github.com/popstas/zsh-command-time.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"/plugins/command-time 2>/dev/null

CURRENT_SHELL=$(echo $SHELL | rev | cut -d "/" -f1 | rev)

if [[ $CURRENT_SHELL != "zsh" ]]; then
  chsh -s "$(which zsh)"
fi

ZSH_FILES=( ".zshrc" ".zsh_aliases" ".zsh_export" ".zsh_functions" )

rm -rf "$HOME/.zshrc"

for zsh_file in "${ZSH_FILES[@]}"
do
  if [ ! -f "$HOME/$zsh_file" ]; then
    ln -s "$PWD/$zsh_file" "$HOME/$zsh_file"
  fi
done
