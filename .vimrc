set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" BenGal personal plugins:
"Doesn't work with VIM 8, but use as soon as available  Plugin 'Valloric/YouCompleteMe'
Plugin 'ajh17/VimCompletesMe'

" Commenting blocks of code
Plugin 'scrooloose/nerdcommenter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

inoremap jk <ESC>
let mapleader = "\<Space>"
filetype plugin indent on
syntax on
set encoding=utf-8
" Spell-checking for code is annoying
" set spell spelllang=en_us

" Tab sizes
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
" Display line numbers
set number
" Searching
set hlsearch
set smartcase
" Using the mouse for scrolling, but then the terminal can not use the mouse
" any more
" set mouse=a
" don't use the arrow keys any more
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
"naturally using hjkl
nnoremap j gj
nnoremap k gk
" use ; as :. Pressing shift is annoying
nnoremap ; :
" don't continue single line comments //"
au FileType c,cpp setlocal comments-=:// comments+=f://
" when pasting comments, disable autoindent with F2
nnoremap <F10> :set invpaste paste?<CR>
set pastetoggle=<F10>
set showmode


" Settings for VimCompletesMe
