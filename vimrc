colorscheme atom-dark-256
set nocompatible
set backup                     " make backups
set backupdir=/tmp			   " backups go here
set bs=indent,eol,start
set number
set relativenumber
set cursorline             " Find the current line quickly.
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set mouse=a
filetype off
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'ajh17/VimCompletesMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
call vundle#end()
filetype plugin indent on     " required! 
"inoremap <C-E> <C-N>
:map  <C-l> :tabn<CR>
:map  <C-h> :tabp<CR>
syntax on
let mapleader=","
let g:syntastic_php_checkers = ['php']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')


" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>
