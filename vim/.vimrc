" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1

" Useful Defaults
"=========================

syntax on
set number

" Sane backspace
set backspace=indent,eol,start

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" Convert tabs to spaces
set expandtab

"Always try to show 10 lines above and below the cursor location:
set scrolloff=10

"Change to the correct indention and plugins dependent on the file type
filetype plugin indent on

"Copy and paste from the system clipboard, and avoid indentation issues:
noremap <leader>y "+y
noremap <leader>p "+p
