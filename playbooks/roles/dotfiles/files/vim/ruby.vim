call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rbenv'
Plug 'vim-ruby/vim-ruby'
Plug 'thoughtbot/vim-rspec'
Plug 'nelstrom/vim-textobj-rubyblock'
Plug 'ngmy/vim-rubocop'
Plug 'jgdavey/tslime.vim'
Plug 'skalnik/vim-vroom'
call plug#end()
" configure ruby file type
au BufRead,BufNewFile {Gemfile,Rakefile,Capfile,Guardfile,*.rake,config.ru} set ft=ruby
" Rubocop settings
let g:vimrubocop_keymap = 0
nmap <Leader>r :RuboCop<CR>
" Vroom settings
let g:vroom_detect_spec_helper = 1
let g:vroom_use_binstubs = 0
let g:vroom_cucumber_path = 'cucumber'
let g:vroom_use_vimux = 1
map <Leader>t :VroomRunTestFile<CR>
map <Leader>x :VroomCloseRunner<CR>
