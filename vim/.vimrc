set nocompatible " required
filetype off     " required

set nu " show line numbers
set clipboard=unnamed " use system clipboard
set encoding=utf-8

set mouse=a

" Open new split below or to the right, more natural
set splitbelow
set splitright

" Don't bother with ctrl-w
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

inoremap jj <ESC>

execute pathogen#infect()

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Valloric/YouCompleteMe'

let python_highlight_all=1
syntax on

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme Zenburn
endif

" Toggle dark and light theme
call togglebg#map("<F5>")

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim'}

" All of your plugins must be added before the following line
call vundle#end()

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/dart-vim-plugin
endif

filetype plugin indent on
" show existing tab with 2 spaces width
set tabstop=2
" when indeting with '>', use 2 spaces width
set shiftwidth=2
set softtabstop=2
" On pressing tab, insert 2 spaces
set expandtab

set autoindent
set ttyfast
set undofile
set relativenumber
set wildmenu
set wildmode=list:longest
set cursorline
set hidden
set backspace=indent,eol,start
set laststatus=2
set showmode
set showcmd

let mapleader = ","

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

set wrap
set textwidth=119
set formatoptions=qrn1
set colorcolumn=125

" make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv
" Fix tmux + vim colors
set term=screen-256color

