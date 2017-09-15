call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'znake/znake-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'morhetz/gruvbox'
Plug 'whatyouhide/vim-gotham'
Plug 'sjl/badwolf'
Plug 'nowk/genericdc'
Plug 'jordwalke/flatlandia'
Plug 'effkay/argonaut.vim'
Plug 'chriskempson/base16-vim'
call plug#end()
colorscheme hybrid
" Colorcolumn from Jon
nmap <leader>uu :let &colorcolumn=join(range(81,999),",")<CR>
nmap <leader>uo :let &colorcolumn=join(range(999,999),",")<CR>
