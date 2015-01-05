export VRDP_AUTH_PAM_SERVICE="vrdpauth"
PATH="$PATH:$HOME/miniconda/bin"
export EDITOR=$HOME/src/vim74/bin/vim
export VISUAL=$HOME/src/vim74/bin/vim
export TDSVER=7.2
export TDSDUMP=/tmp/freetds.log

# If not running interactively, do not do anything
 [[ $- != *i* ]] && return
 [[ -z "$TMUX" ]] && exec tmux -2
# powerline settings
# . ~/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

# shell aliases
alias lsa='ls -hAl'
alias lsd='ls -hdl'
alias lst='ls -hAtlr'
alias getip='ifconfig | grep -E "Bcast" | cut -d ":" -f2 | cut -d " " -f1'
alias python='~/miniconda/bin/python'
alias ipython='~/miniconda/bin/ipython'
alias vpython='./venv/bin/python'

#app aliases
alias chrome='google-chrome-stable'

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
alias vpn='sudo openvpn --config ~/.config/openvpn/client.ovpn'
alias pay='cd ~/Projects/github/payrollscripts/; venv;'
alias fot='cd ~/Projects/github/front_office_tools/; venv;'
alias vim='$HOME/src/vim74/bin/vim'
alias toclp='xclip -sel clip'
