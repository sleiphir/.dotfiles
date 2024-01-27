path+=("$HOME/.config/scripts")
path+=("$HOME/.local/bin")
path+=("/usr/local/go/bin")
path+=("/usr/local/zig")
path+=("/usr/local/nvim/bin")

export PATH

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

export FZF_BASE=/usr/bin/fzf

export DISABLE_FZF_AUTO_COMPLETION="false"

export ZSH="$HOME/.oh-my-zsh"

# Set vi mode cursor
export VI_MODE_SET_CURSOR=true

# No Esc delay
export KEYTIMEOUT=1

export GPG_TTY=$(tty)
