colorscheme monokai
set backspace=indent,eol,start
set backup                     " make backups
set backupdir=/tmp             " backups go here
set bs=indent,eol,start
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
Plugin 'bitc/vim-bad-whitespace'
Plugin 'joonty/vim-phpqa'
Plugin 'vimwiki/vimwiki'
Plugin 'rking/ag.vim'
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

"Remove bad whitespace
nmap <leader>bw :EraseBadWhitespace<cr>
autocmd BufWritePre * :EraseBadWhitespace

nmap <leader>fm :SyntasticCheck --standard=PSR2 --colors -n phpcs<cr>

"Save file
nnoremap <Leader>s :w<CR>

"highlight last inserted text
" open Tagbar
nnoremap <leader>t :TagbarToggle<CR>

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

"nnoremap <leader>g :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap <leader>g :Ag "\b<C-R><C-W>\b"<cr>
nnoremap <leader>f <c-w>gF

iabbrev lo \Log::info(json_encode());

"-------------Visual---------------------"
hi LineNr ctermbg=bg
set foldcolumn=2
hi foldcolumn ctermbg=bg
hi vertsplit ctermbg=bg ctermfg=bg

"-------------Auto-Commands--------------"

"Automatically remove trailing whitespace
"autocmd BufWritePre * %s/\s\+$//e

"change line hightlight depending on mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul


"Automatically source the Vimrc file on save.
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END
