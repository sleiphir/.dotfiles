# Enable vi mode
bindkey -v

zstyle ':omz:update' mode auto
zstyle ':omz:update' frequency 7

ZSH_THEME="robbyrussell"

plugins=(
    vi-mode
    git
    zsh-autosuggestions
    sudo
    fzf
)

source $ZSH/oh-my-zsh.sh

alias ls='eza --icons --grid --classify --colour=auto --sort=type --group-directories-first --header --modified --created --git --binary --group' # ls
alias ll='eza -lbF --git' # list, size, type, git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cat='bat'
alias grepw='grep -rnw $(pwd) -e'
alias grepc='grep -rn $(pwd) -e'
alias grepex=_grepex $1
alias open='xdg-open'
alias vim='nvim'
alias e=edit $1
alias dot='dotfiles'

function edit() {
	if ! command -v editor &> /dev/null; then
		editor=nvim
	fi
	if [ -z "$1" ]; then
		$editor .
	else
		$editor $1
	fi
}

function _grepex() {
    grep -rnE "$1" $(pwd)
}

bindkey '^y' autosuggest-accept
bindkey -s ^f "tmux-sessionizer\n"

# Load asdf
. "$HOME/.asdf/asdf.sh"

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Load zoxide
eval "$(zoxide init zsh)"
