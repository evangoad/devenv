call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
call plug#end()
au BufRead,BufNewFile {COMMIT_EDITMSG} set ft=gitcommit
