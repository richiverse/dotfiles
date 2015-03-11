set nocompatible              " be iMproved, required
" set the runtime path to include Vundle and initialize
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
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

Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'pangloss/vim-javascript'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'einars/js-beautify'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'Raimondi/delimitMate'
Plugin 'kien/ctrlp.vim'
Plugin 'plasticboy/vim-markdown'
Plugin 'sjl/gundo.vim'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'klen/python-mode'
Plugin 'ivanov/vim-ipython'
Plugin 'tshirtman/vim-cython'
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set guifont=Menlo\ for\ Powerline
set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
syntax on

set mouse=a

syntax enable

if strftime("%H") < 16 && strftime("%H") > 7
  colorscheme solarized
  set background=light
else
  colorscheme solarized
  set background=dark
endif

let g:solarized_termcolors = 256

set laststatus=2
" Show PASTE if in paste mode
let g:airline_detect_paste=1

" +" Show airline for tabs too
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
" +" To have NERDTree always open on startup change to 1
let g:nerdtree_tabs_open_on_console_startup = 0

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
augroup mySyntastic
  au!
  au FileType tex let b:syntastic_mode = "passive"
augroup END

" ----- xolox/vim-easytags settings -----
"  +" Where to look for tags files
set tags=./tags;,~/.vimtags
"  +" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

" ----- majutsushi/tagbar settings -----
"  +" Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>

" ----- airblade/vim-gitgutter settings -----
"  +" Required after having changed the colorscheme
hi clear SignColumn
"  +" In vim-airline, only display "hunks" if the diff is non-zero
let g:airline#extensions#hunks#non_zero_only = 1

let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" python-mode settings
let g:pymode_folding = 0
let g:pyFlakes_use_quickfix = 0
let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe', 'pep257']

