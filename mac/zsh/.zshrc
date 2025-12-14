# pnpm
export PNPM_HOME="/Users/leonwasilewski/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git macos docker)

source $ZSH/oh-my-zsh.sh

# aliases
alias n="nvim"

# tmux
alias ta="tmux attach -t"
alias td="tmux detach"
alias tad="tmux attach -d -t"
alias tn="tmux new-session -s"
alias tk="tmux kill-session -t"
alias tls="tmux list-sessions"

# exa
alias ls="eza --oneline --icons --sort=type"
alias ll="eza --long --all --header --icons --time-style=long-iso --sort=type --no-user"
