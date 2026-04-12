" 基础设定
set nocompatible
set nobackup
set noswapfile
set nowritebackup
filetype plugin on
set number
set relativenumber
set encoding=utf-8
set mouse=a
set showmode
set jumpoptions=stack

" 键位
nnoremap <space> <nop>
let mapleader=" "
nnoremap <silent> <esc> :noh<cr><esc>
nnoremap <space>b :buffers<cr>
nnoremap <space>e :b#<cr>
nnoremap <space>w :w<cr>
nnoremap <space>q :qa<cr>
inoremap jf <esc>
cnoremap jf <esc>

" 缩进
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smarttab

" 搜索
set hlsearch
set incsearch
set ignorecase
set smartcase

" 外观
set cursorline
syntax on
set title
set ruler
set modeline

" 文件查找
set path+=**
set wildmenu

