set  t_Co=256
colorscheme atom-dark-256
set nocompatible
set backspace=indent,eol,start
set backup                     " make backups
set backupdir=/tmp			   " backups go here
set bs=indent,eol,start
set number
set cursorline             " Find the current line quickly.
set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set hlsearch
set incsearch
set ignorecase

filetype off
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'ajh17/VimCompletesMe'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'scrooloose/nerdtree'
Plugin 'rking/ag.vim'
Plugin 'bitc/vim-bad-whitespace'
call vundle#end()
filetype plugin indent on     " required!
syntax on

"let mapleader="\<Space>"
map <Space> <leader>
let g:syntastic_php_checkers = ['php']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:30,results:30'
let g:ctrlp_clear_cache_on_exit = 0

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <Leader>ev :tabe $MYVIMRC<cr>

"Some gittiness
nmap <Leader>gb :Gblame<cr>

"Add simple highlight removal.
nmap <Leader>h :nohlsearch<cr>

"Ctrl+[l,h] to move to tab left or right of here
nmap  <C-l> :tabn<cr>
nmap  <C-h> :tabp<cr>

"Tab movement with CTRL
nnoremap <Leader>1 1gt
nnoremap <Leader>2 2gt
nnoremap <Leader>3 3gt
nnoremap <Leader>4 4gt
nnoremap <Leader>5 5gt
nnoremap <Leader>6 6gt

" Make sure [j,k] brings us to expected line
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')

nmap <leader>n :NERDTreeToggle<cr>
nmap <leader>f :tag<space>

"Remove bad whitespace
nmap <leader>bw :EraseBadWhitespace<cr>

"Save file
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>

"-------------Visual---------------------"
hi LineNr ctermbg=bg
set foldcolumn=2
hi foldcolumn ctermbg=bg
hi vertsplit ctermbg=bg ctermfg=bg

"-------------Auto-Commands--------------"

"Automatically remove trailing whitespace
"autocmd BufWritePre * %s/\s\+$//e

"Automatically source the Vimrc file on save.
augroup autosourcing
		autocmd!
		autocmd BufWritePost .vimrc source %
augroup END

" c-] - go to def
" :ts show all tags for search
" c-^ to go back
" zz center view on line
" Sessions
" :mks ~/.vim/sessions/rooster.vim
" :source ~/.vim/sessions/rooster.vim
" or
" vim -S ~/.vim/sessions/rooster.vim
