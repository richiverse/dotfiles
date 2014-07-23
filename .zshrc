export PATH=$HOME/anaconda/bin:$PATH
# If not running interactively, do not do anything
[[ $- != *i* ]] && return
[[ -z "$TMUX" ]] && exec tmux
# powerline settings
# . ~/.vim/bundle/powerline/powerline/bindings/zsh/powerline.zsh

alias gs = 'git status'
alias gc = 'git commit -m '
alias ga = 'git add --all .'
alias push = 'git push -U origin master'
alias pull = 'git pull'
