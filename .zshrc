export VRDP_AUTH_PAM_SERVICE="vrdpauth"
PATH="$PATH:$HOME/anaconda/bin"
export EDITOR=/usr/bin/vim
export VISUAL=/usr/bin/vim

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
alias python='~/anaconda/bin/python'
alias ipython='~/anaconda/bin/ipython'

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
