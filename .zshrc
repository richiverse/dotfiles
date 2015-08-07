export VRDP_AUTH_PAM_SERVICE="vrdpauth"
PATH="$PATH:$HOME/miniconda/bin"
export EDITOR=$HOME/src/vim74/bin/vim
export VISUAL=$HOME/src/vim74/bin/vim
export TDSVER=7.2
export TDSDUMP=/tmp/freetds.log
export MAIL=/var/spool/mail/rich
export TERM=screen-256color
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec  tmux -2
# powerline settings
# . ~/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

# shell aliases
alias lsa='ls -hAl'
alias lsd='ls -hdl'
alias lst='ls -hAtlr'
alias getip='ifconfig | grep -E "Bcast" | cut -d ":" -f2 | cut -d " " -f1'
# alias python='~/miniconda/bin/python'
alias ipython='~/miniconda/bin/ipython'
alias vpython='./venv/bin/python'

#app aliases
alias chrome='google-chrome-stable'
alias wepy='~/src/wepy/we.py brooklyn'

# Git aliases
alias gs='git status'
alias gc="git commit -m "
alias ga='git add --all .'
alias gd='git diff'
alias gdn='git diff --no-index'
alias push='git push'
alias pull='git pull'

# Conda aliases
alias sa='source activate '
alias sd='source deactivate'

alias venv='. ./venv/bin/activate'
alias vpn='sudo ~/src/clockworkmod/Tether/linux/run.sh;'
alias pay='cd ~/Projects/github/payrollscripts/; venv;'
alias ipn='ipython notebook'
alias fot='cd ~/Projects/github/front_office_tools/; venv;'
alias ndc='cd ~/Projects/github/ndc/; venv;'
alias met='cd ~/Projects/github/influx-metrics/; venv;'
alias api='cd ~/Projects/github/scripts/python-client/; venv;'
alias vim='/usr/bin/vim'
alias toclp='xclip -sel clip'
alias issuesp='ghi list -U && ghi list -U edisgreat && ghi list -L "G: Import"'

source ~/.autoenv/activate.sh
source ~/src/zsh-git-prompt/zshrc.sh
PROMPT='%B%m%~%b$(git_super_status) %# '



export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval `dircolors ~/.solarized/dircolors-solarized/dircolors.256dark`
