call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
call plug#end()
set rtp+=~/.fzf
map <c-p> :FZF<CR>
