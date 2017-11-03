# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

#turn on comments with # in shell
setopt interactivecomments

### ALIASES
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"
alias ix="curl -s -F 'f:1=<-' ix.io"
up () { curl -F "c=@${1:--}" http://ptpb.pw/ }
alias vi="vim"
alias neofetch="neofetch --crop_mode fit --image_size 33% --image ~/.config/neofetch/archlinux.png --colors 0 7 7 7 7 7"
alias startx="ssh-add;startx"

### EXPORTS
export EDITOR='vim'
export VISUAL='vim'
export BROWSER='google-chrome-stable'
export POWERLINE_CONFIG_COMMAND=/usr/bin/powerline-config
unset SSH_ASKPASS

### MAN COLORS
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

### SSH AGENT
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

### ZSH CONF
autoload -U zmv
plugins=(git python)
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

### PURE PROMPT
fpath=( "$HOME/.zfunctions" $fpath )
autoload -U promptinit; promptinit
prompt pure

export PATH=$PATH:$HOME/go/bin
export GOPATH=$HOME/go
