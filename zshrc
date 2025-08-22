
# The following lines were added by compinstall
zstyle :compinstall filename '/home//.zshrc'

autoload -Uz compinit
compinit

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=10000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY

setopt notify
unsetopt beep

# Vi mode
bindkey -v
export KEYTIMEOUT=1
