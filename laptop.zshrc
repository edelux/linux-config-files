# Set hard file permitions
umask 077

setopt histignorealldups sharehistory

#bindkey -e # Use emacs keybindings
bindkey -v # Use vi keybindings

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'

source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/powerlevel9k/powerlevel9k.zsh-theme

POWERLEVEL9K_MODE='awesome-fontconfig' # nerdfont-complete,awesome-fontconfig,awesome-patched,compatibility,default,flat hacking|msdos
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status vcs dir_writable)
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh virtualenv aws aws_eb_env docker_machine dir background_jobs)

POWERLEVEL9K_FOLDER_ICON=''
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_HOME_SUB_ICON=$'\uF015' # 
#POWERLEVEL9K_HOME_ICON=$'\uF015'     # 