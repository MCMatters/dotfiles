setopt HIST_IGNORE_SPACE

if [ -f "$HOME/.zsh_export" ]; then
    . "$HOME/.zsh_export"
fi

if [ -f "$HOME/.zsh_functions" ]; then
    . "$HOME/.zsh_functions"
fi

plugins=(zsh-completions zsh-autosuggestions kubectl command-time zsh-syntax-highlighting)

source "$ZSH/oh-my-zsh.sh"

autoload -U +X bashcompinit && bashcompinit

export ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[yellow]%}("
export PROMPT='[%D{%K:%M}] %{$fg[green]%}%c%{$reset_color%}$(git_prompt_info) %(!.#.$) '

if [ -f "$HOME/.zsh_aliases" ]; then
    . "$HOME/.zsh_aliases"
fi

if [ -f "$HOME/.zsh_aliases_custom" ]; then
    . "$HOME/.zsh_aliases_custom"
fi

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
