export EDITOR="nvim" 
export BROWSER="firefox"
export TERMINAL="alacritty"
export MANPAGER="nvim +Man!"
# for doom
export PATH="$HOME/.config/emacs/bin:$PATH"
export XDG_CONFIG_HOME="$HOME/.config/"

alias lf="lfrun"
alias rm="trash"
alias ls="lsd -hl -v --group-directories-first"
alias cat="bat"
alias config='/usr/bin/git --git-dir=/home/mushroom/dotfiles --work-tree=/home/mushroom'

# Basic auto/tab complete
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
setopt extendedglob
_comp_options+=(globdots)

# For vim
bindkey -v

# For History
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
HISTFILE=$HOME/.config/zsh/.zsh_history

autoload -Uz add-zsh-hook vcs_info
setopt prompt_subst
add-zsh-hook precmd vcs_info


autoload -U colors && colors
# PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}% %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[blue]%}󰣇 %{$fg[yellow]%}%~ %{$fg[blue]%}%{$reset_color%}%b "
RPROMPT='%F{red}${vcs_info_msg_0_}%f'

source $HOME/.config/zsh/zsh_plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/.config/zsh/zsh_plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh


# Enable checking for (un)staged changes, enabling use of %u and %c
zstyle ':vcs_info:*' check-for-changes true
# Set custom strings for an unstaged vcs repo changes (*) and staged changes (+)
zstyle ':vcs_info:*' unstagedstr ' *'
zstyle ':vcs_info:*' stagedstr ' +'
# Set the format of the Git information for vcs_info
zstyle ':vcs_info:git:*' formats       '(%b%u%c)'
zstyle ':vcs_info:git:*' actionformats '(%b|%a%u%c)'


[ -f "/home/mushroom/.ghcup/env" ] && source "/home/mushroom/.ghcup/env" # ghcup-env

. "$HOME/.cargo/env"

bindkey              '^I'         menu-complete
bindkey "$terminfo[kcbt]" reverse-menu-complete

zstyle ':autocomplete:*'  ignored-input 'pacman*##'

eval "$(zoxide init --cmd cd zsh)"

#For pywal
source ~/.cache/wal/colors-tty.sh
# Not supported in the "fish" shell.
(\cat ~/.cache/wal/sequences &)

# Alternative (blocks terminal for 0-3ms)
\cat ~/.cache/wal/sequences


update () {
    sudo pacman -Syu
    pkill -RTMIN+24 dwmblocks
}
