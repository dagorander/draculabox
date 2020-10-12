" UI
set nocompatible
set autoread
set number
set tabstop=4
set title
set encoding=utf-8
set showcmd
set mouse=a
"set cursorline

" SEARCHING
set hlsearch
set incsearch
set ignorecase
set smartcase
set gdefault

" INDENTING
"set copyindent
"set smarttab
"set autoindent
"set smartindent

" VIM PLUGINS
"call plug#begin()
"Plug 'junegunn/vim-easy-align'
"call plug#end()


" THEME
packadd! dracula
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula
