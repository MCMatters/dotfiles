if [ -f ~/.zsh_export ]; then
    . ~/.zsh_export
fi

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
fi

plugins=(zsh-completions zsh-autosuggestions kubectl command-time zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit

if [ -f /usr/local/bin/terraform ]; then
    complete -o nospace -C /usr/local/bin/terraform terraform
fi
