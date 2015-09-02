" Use Vundle
"""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/MatchTagAlways'
Plugin 'rking/ag.vim'
Plugin 'wincent/command-t'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'scrooloose/nerdtree'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'ryanoasis/vim-webdevicons'

call vundle#end()            " required
filetype plugin indent on    " required

" Workflow
"""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

" Highlight the current line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkgray ctermfg=none

set autoread
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set number
set smartcase
filetype on
syntax on

" Close buffer
nnoremap <leader>w :bd<CR>

" Don't show intro
set shortmess+=I

" Move through buffers
nnoremap <leader>e :bp<CR>
nnoremap <leader>r :bn<CR>

" Keep a few lines at top and bottom of buffer
set scrolloff=10


" Formatting
""""""""""""""""""""""""""""""""""""""""""""""
set sw=4
set softtabstop=4
set tabstop=4

filetype indent on
set autoindent

" open htmldjango as html
au BufNewFile,BufRead *.html set filetype=html

" per file indentation
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=4 sts=4 sw=4

" Editing
""""""""""""""""""""""""""""""""""""""""""""""

" make escape faster
inoremap jk <esc>

" clear search highlighting
nnoremap <leader><space> :nohlsearch<CR>

" show trailing whitespace
match ErrorMsg '\s\+$'

" allow backspace over EOL
set backspace=eol


" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""

" NERDTree
map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>n :NERDTreeToggle<CR>
" close when opening file
let NERDTreeQuitOnOpen = 1

" Ag
" Don't autoopen first result
nnoremap <leader>a :Ag!<Space>'

" Command-t
nnoremap <silent> <Leader>p :CommandT<CR>
let g:CommandTHighlightColor = 'Todo'
let g:CommandTMaxFiles = 100000
let g:CommandTTraverseSCM = 'pwd'
et g:CommandTAlwaysShowDotFiles = 1

" CtrlP Funky
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>f :CtrlPFunky<Cr>

" Syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['jshint']
" Close gutter with ,g
nnoremap <leader>g :SyntasticReset<CR>

" Airline
set background=dark
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
