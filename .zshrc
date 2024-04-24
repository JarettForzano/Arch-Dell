# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100
SAVEHIST=1000

zstyle :compinstall filename '/home/jarett/.zshrc'

autoload -Uz compinit
compinit

autoload -U add-zsh-hook


alias v="nvim"

 # Changing "exa" to "eza"
alias ls='eza --icons --color=always --group-directories-first'

alias ll='eza -alF --icons --color=always --group-directories-first'

alias la='eza -a --icons --color=always --group-directories-first'

alias l='eza -F --icons --color=always --group-directories-first'

alias l.='eza -a | egrep "^\."' 

function cd() {
    builtin cd "$@" && ls
}



eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

ls
