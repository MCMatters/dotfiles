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
complete -o nospace -C /usr/local/bin/terraform terraform

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/matters/Downloads/google-cloud-sdk/path.zsh.inc' ]; then
    . '/Users/matters/Downloads/google-cloud-sdk/path.zsh.inc';
fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/matters/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then
    . '/Users/matters/Downloads/google-cloud-sdk/completion.zsh.inc';
fi
