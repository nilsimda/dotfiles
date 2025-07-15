# ~/.zshrc

eval "$(starship init zsh)"
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Created by `pipx` on 2024-11-05 08:02:46
export PATH="$PATH:/Users/macbeth/.local/bin"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

# go executables
export PATH=$PATH:$(go env GOPATH)/bin
export GOPRIVATE=github.com/rheingold-salon

# zoxide
eval "$(zoxide init --cmd cd zsh)"

# some aliases
alias ll='eza -l'
alias ls='eza'
alias gst='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'



