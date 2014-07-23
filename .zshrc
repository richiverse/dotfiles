set guifont=Source\ Code\ Pro\ 12
export PATH=$HOME/anaconda/bin:$PATH
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
# powerline settings
# . ~/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

# shell aliases
alias lsa='ls -hAl'
alias lsd='ls -hdl'
alias lst='ls -hAtlr'

# Git aliases
alias gs='git status'
alias gc='git commit -m '
alias ga='git add --all .'
alias push='git push -u origin master'
alias pull='git pull'
