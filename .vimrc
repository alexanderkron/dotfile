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
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ConradIrwin/vim-bracketed-paste'

call vundle#end()            " required
filetype plugin indent on    " required

" Workflow
"""""""""""""""""""""""""""""""""""""""""""""
let mapleader=","

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
"set scrolloff=10

" Save readonly file
nnoremap <leader>sw :w !sudo tee %<CR>

" Show command history
nnoremap <leader>h q:

" Remap half paging
nnoremap <C-j> <C-d>
nnoremap <C-k> <C-u>
vnoremap <C-j> <C-d>
vnoremap <C-k> <C-u>

" Replay macro over visual selection (must provide register)
vnoremap <leader>q :'<,'>normal @

" Excludes
set wildignore+=**/node_modules
set wildignore+=*.swp

" Fold it up
set foldmethod=indent
set foldnestmax=2

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


" Colors
"""""""""""""""""""""""""""""""""""""""""""""""

" Highlight the current line
set cursorline
hi CursorLine cterm=None ctermbg=234

" Highlight folds
hi Folded ctermbg=237

" Highlight line number gutter
hi LineNr ctermbg=235

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
let g:CommandTMaxFiles = 100000
let g:CommandTTraverseSCM = 'pwd'
let g:CommandTAlwaysShowDotFiles = 1
let g:CommandTHighlightColor = "Conceal"

" CtrlP Funky
let g:ctrlp_extensions = ['funky']
nnoremap <Leader>f :CtrlPFunky<Cr>

" Syntastic
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_enable_balloons = 0
let g:syntastic_enable_highlighting = 0
" Close gutter with ,g
nnoremap <leader>g :SyntasticReset<CR>

" Airline
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'distinguished'
