set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'preservim/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'jwalton512/vim-blade'

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
"

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|vendor\|lib'

set hlsearch

set showmatch

set showcmd
set ruler
set relativenumber

set colorcolumn=80,100

syntax enable

colorscheme 256-jungle
set background=dark

set number

set autoindent

set expandtab
set smarttab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set wildmenu

" Tree View
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 75
let g:netrw_altv = 1

" Executing commands, reads result to buffer
noremap Q !!sh<cr>

let mapleader = " "
nnoremap <leader>t :e **/*
nnoremap <leader>s :vs **/*

map <C-n> :NERDTreeToggle<CR>

let g:airline_powerline_fonts = 1

imap jk <Esc>
