set nocompatible
set nosmartindent
set autoindent
set incsearch
set hlsearch
set title
set ruler
set nobackup
set modeline
set modelines=6
set laststatus=0
set encoding=utf-8
set belloff=all
set mouse=a
set number
set relativenumber
set smarttab
set shiftwidth=4
set tabstop=4
syntax on
filetype on

let mapleader = " "
inoremap [ []<left>
inoremap ( ()<left>
inoremap { {}<left>
inoremap jj <esc>

map <leader>- :split<enter>
map <leader>\ :vsplit<enter>
