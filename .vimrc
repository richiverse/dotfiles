set nocompatible              " be iMproved, required
filetype off                  " required
set guifont="Source\ Code\ Pro\ 11"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'klen/python-mode'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
syntax enable
set background=light
let g:solarized_termcolors = 256
colorscheme solarized

if has('gui_running')
    set background=light
else
    set background=light
endif

" python-mode settings
let g:pymode_folding = 0
let g:pyFlakes_use_quickfix = 0
let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe', 'pep257']

