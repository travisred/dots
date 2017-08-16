colorscheme monokai
set backspace=indent,eol,start
set backup                     " make backups
set backupdir=/tmp			   " backups go here
set bs=indent,eol,start
set cursorline             " Find the current line quickly.
set hlsearch
set incsearch
set lazyredraw
set list
set listchars=tab:>-
set nocompatible
set number
set smartcase
set t_Co=256
set tabstop=4 shiftwidth=4 expandtab
set wildmenu

filetype off
" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'ervandew/supertab'
Plugin 'Shougo/neocomplete.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-sensible'
Plugin 'ciaranm/detectindent'
Plugin 'rking/ag.vim'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'majutsushi/tagbar'
Plugin 'joonty/vim-phpqa'
call vundle#end()
filetype plugin indent on     " required!
syntax on

set omnifunc=syntaxcomplete#Complete
autocmd FileType php setlocal omnifunc=phpcomplete#CompletePHP
set completeopt=longest,menuone
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

map <Space> <leader>
let g:syntastic_php_checkers = ['php']
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:35,results:35'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_working_path_mode = 'r'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd VimEnter * nested :call tagbar#autoopen(1)
let g:tagbar_show_visibility = 1
let g:tagbar_show_linenumbers = 1

let g:phpqa_messdetector_autorun = 0
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_codesniffer_args = "--standard=PSR2"

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
nmap <leader>fm :SyntasticCheck --standard=PSR2 --colors -n phpcs<cr>

"Save file
nnoremap <Leader>s :w<CR>

"highlight last inserted text
nnoremap gV `[v`]

" open ag.vim
nnoremap <leader>a :Ag

" open Tagbar
nnoremap <leader>t :TagbarToggle<CR>

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
"

" fuel mileage calculate cost total
nnoremap <Leader>ft ^ :%!awk '{ print $3 * $4;}'<CR>v$hyu
" fuel mileage calculate record
nnoremap <Leader>fc ^ :%!awk '{ print $2 / $3;}'<CR>v$hyu
" fuel mileage total average
nnoremap <Leader>fa :%!awk '{ sum += $6; n++ } END { if (n > 0) print sum / n;}'<CR>v$yu
