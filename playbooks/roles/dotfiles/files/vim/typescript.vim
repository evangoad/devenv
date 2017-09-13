call plug#begin('~/.vim/plugged')
  Plug 'Quramy/tsuquyomi'
  " Vimproc is needed for tsuquyomi in vim versions less than 8
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'leafgarland/typescript-vim'
  Plug 'Quramy/vim-js-pretty-template'
call plug#end()
au BufRead,BufNewFile {.ts} set ft=typescript
