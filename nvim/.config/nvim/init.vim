set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Install your plugins below
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'jiangmiao/auto-pairs'
Plugin 'NLKNguyen/papercolor-theme'

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
" Put your non-Plugin stuff after this line

" COLOR SCHEME
set background=dark
colorscheme PaperColor
set number " show line numbers"
autocmd vimenter * NERDTree " automatically open NERDTree on startup
autocmd vimenter * wincmd w  " switch away from NERDTree window to the main window
let g:airline#extensions#tabline#enabled = 1 " show buffer tabs at top
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " close vim if NERDTree is the only open window
set hidden " allow switching active buffer if current buffer is modified but not saved

" map our leader
let mapleader = "\<Space>"

" keybindings to make navigating buffers more natural
nnoremap <leader>t :enew<cr>
nnoremap <leader>l :bnext<cr>
nnoremap <leader>h :bprevious<cr>

" escape insert mode with jk
inoremap jk <esc>

" change windows with arrow keys
nnoremap <left> <c-w><left>
nnoremap <right> <c-w><right>
nnoremap <up> <c-w><up>
nnoremap <down> <c-w><down>

