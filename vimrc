colorscheme atom-dark-256
set nocompatible
set backspace=indent,eol,start
set backup                     " make backups
set backupdir=/tmp			   " backups go here
set bs=indent,eol,start
set number
set relativenumber
set cursorline             " Find the current line quickly.
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set mouse=a
set hlsearch
set incsearch
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
syntax on

let mapleader=","
let g:syntastic_php_checkers = ['php']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0

" If the current buffer has never been saved, it will have no name,
" call the file browser to save it, otherwise just save it.
command! -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabe $MYVIMRC<cr>

"Add simple highlight removal.
nmap <Leader><space> :nohlsearch<cr>

"Ctrl+[l,h] to move to tab left or right of here
nmap  <C-l> :tabn<CR>
nmap  <C-h> :tabp<CR>

" Make sure [j,k] brings us to expected line
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

"-------------Auto-Commands--------------"

"Automatically source the Vimrc file on save.
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END
