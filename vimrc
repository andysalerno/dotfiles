set nocompatible
 
" Begin Vundle settings
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Begin Vundle plugins
Plugin 'vim-airline/vim-airline'
Plugin 'Syntastic'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'Solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Begin custom vim-airline settings
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemod=':t'
" let g:airline_theme='PaperColor'

" Begin my custom Vim settings
" set t_Co=256
set background=dark
colorscheme PaperColor
set backspace=2
set nobackup
set noswapfile
set history=50
set ruler
set incsearch
set hlsearch

syntax enable
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number
set showcmd
set cursorline
set wildmenu
set showmatch " highlight matching [{()}]

set hidden " allow modified buffers to be hidden
let mapleader = " "
nmap <leader>l :bnext<CR>
nmap <leader>h :bprevious<CR>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
imap <C-L> <Esc>
