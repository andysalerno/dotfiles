set nocompatible
filetype off
 
" Begin Vundle settings
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Begin Vundle plugins
Plugin 'vim-airline/vim-airline'
Plugin 'Syntastic'

" Begin my custom Vim settings
set backspace=2
set nobackup
set noswapfile
set history=50
set ruler
set background=dark
set incsearch
set hlsearch

syntax enable
set tabstop=4
filetype plugin indent on
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
filetype indent on
set wildmenu
set showmatch " highlight matching [{()}]

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap <C-L> <Esc>
