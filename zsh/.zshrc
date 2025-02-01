setopt HIST_IGNORE_SPACE

if [ -f ~/.zsh_export ]; then
    . ~/.zsh_export
fi

if [ -f ~/.zsh_functions ]; then
    . ~/.zsh_functions
fi

plugins=(zsh-completions zsh-autosuggestions kubectl command-time zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

autoload -U +X bashcompinit && bashcompinit

export ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
export PROMPT='[%D{%K:%M}] %{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '

if [ -f ~/.zsh_aliases ]; then
    . ~/.zsh_aliases
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
