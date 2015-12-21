" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-sensible'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'Shougo/neocomplete'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'jakobwesthoff/whitespacetrail'
Plugin 'tpope/vim-eunuch'
"Plugin 'joonty/vdebug.git'
call vundle#end()

set backup                     " make backups
set backupdir=/tmp			   " backups go here
set backspace=indent,eol,start
set nu

set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4

inoremap <C-E> <C-N>
:map  <C-l> :tabn<CR>
:map  <C-h> :tabp<CR>
map :W :w
map :Q :q

filetype off                   " required!
syntax enable
set background=dark

filetype plugin indent on     " required! 
let mapleader=","

let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
" ctrlp config - persistant cache
let g:ctrlp_clear_cache_on_exit = 0

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

let g:neocomplcache_enable_at_startup = 1

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"https://github.com/rht/eigenvimrc
set laststatus=2
set incsearch
set ignorecase
set ruler
set splitright

