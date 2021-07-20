alias gs='git status'
alias gc='git commit --verbose'
alias gpu='git push'
alias gp='git pull'
alias gpr='git pull --rebase'
alias gd='git diff'
alias ga='git add'
alias gco='git checkout'
alias gm='git merge --no-edit'

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="$PATH:$HOME/continued"
export PATH=$(brew --prefix php@7.2)/bin:$PATH

alias php@5.6='$(brew --prefix php@5.6)/bin/php'
alias php@7.0='$(brew --prefix php@7.0)/bin/php'
alias php@7.1='$(brew --prefix php@7.1)/bin/php'
alias php@7.2='$(brew --prefix php@7.2)/bin/php'

alias php='$(brew --prefix php@7.2)/bin/php'

source ~/.bashrc
export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"
