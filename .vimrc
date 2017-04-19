set nocompatible              " be iMproved, required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

" ruby stuff
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-bundler'

call vundle#end()            " required
filetype plugin indent on    " required
set laststatus=2
syntax on
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

let g:airline#extensions#tabline#enabled = 1

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1 
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

set expandtab
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set modifiable
set mouse=a

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%120v.\+/
map <leader>v :!bundle exec approvals verify -d vimdiff -a<cr>
