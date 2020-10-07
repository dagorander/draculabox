unlet! skip_defaults_vim
source $VIMRUNTIME/defaults.vim

set number
set tabstop=4


packadd! dracula
syntax enable
let g:dracula_colorterm = 0
colorscheme dracula
