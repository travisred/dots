colorscheme monokai
set backspace=indent,eol,start
set backup                     " make backups
set backupdir=/tmp             " backups go here
set bs=indent,eol,start
set hlsearch
set incsearch
set lazyredraw
set redrawtime=10000
set list
set listchars=tab:>-
set nocompatible
set number
set ruler
set statusline+=col:\ %c,
set smartcase
set t_Co=256
set tabstop=4
set shiftwidth=4
set expandtab
set wildmenu
" Open in buffer in new tab (e.g. opening file from QuickFix window)
set switchbuf+=usetab,newtab
set modifiable

" Infinite undo
set undofile
set undodir=~/.vim/undodir

filetype off

" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'gmarik/vundle'
Plugin 'Shougo/neocomplete.vim'
Plugin 'junegunn/fzf'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-rhubarb'
Plugin 'ciaranm/detectindent'
Plugin 'bitc/vim-bad-whitespace'
Plugin 'rking/ag.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'vimwiki/vimwiki'
call vundle#end()
filetype plugin indent on     " required!
syntax on

map <Space> <leader>
let g:syntastic_php_checkers = ['php']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:vimwiki_list = [{'path': '~/vimwiki/'}]

"-------------Mappings--------------"
"Make it easy to edit the Vimrc file.
nmap <leader>ev :tabe $MYVIMRC<cr>
nmap <leader>q :q!<cr>

"Some gittiness
nmap <leader>gb :Gblame<cr>
nmap <leader>gh :Gbrowse<cr>

"Add simple highlight removal.
nmap <leader>h :nohlsearch<cr>

"Ctrl+[l,h] to move to tab left or right of here
nmap  <C-l> :tabn<cr>
nmap  <C-h> :tabp<cr>

nmap  <C-p> :FZF<cr>

"Remove bad whitespace
autocmd BufWritePre * :EraseBadWhitespace

"Save file
nnoremap <leader>s :w<CR>
nnoremap <C-s> :w<CR>

"highlight last inserted text
" open Tagbar
nnoremap <leader>T :TagbarToggle<CR>

"Delete current file
nnoremap <leader>rm :call delete(expand('%'))<CR>

" Date
:nnoremap <leader>d "=strftime("%Y-%m-%d")<CR>PA:

"Use <space>g to find occurrences
"Hit enter on line in quickfix list to go to occurrence in new tab
nnoremap <leader>g :Ag --ignore-dir=tmp --ignore-dir=webroot/coverage "\b<C-R><C-W>\b"<CR>:cw<CR>
set switchbuf+=usetab,newtab "new tab for buffer, or re-use if already open

iabbrev lo \Log::info('TRR - ' . json_encode());
iabbrev clo CakeLog::write('debug', 'TRR - ' . json_encode());

"Format XML
com! FormatXML :%!python3 -c "import xml.dom.minidom, sys; print(xml.dom.minidom.parse(sys.stdin).toprettyxml())"

vmap <leader>cc <Plug>NERDCommenterToggle

"-------------Visual---------------------"
hi LineNr ctermbg=bg
set foldcolumn=2
hi foldcolumn ctermbg=bg
hi vertsplit ctermbg=bg ctermfg=bg

"-------------Auto-Commands--------------"

"change line hightlight depending on mode
autocmd InsertEnter * set cul
autocmd InsertLeave * set nocul

"Automatically source the Vimrc file on save.
augroup autosourcing
        autocmd!
        autocmd BufWritePost .vimrc source %
augroup END

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

