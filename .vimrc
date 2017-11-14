call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'haya14busa/incsearch.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'ludovicchabant/vim-gutentags'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'python-mode/python-mode'
Plug 'sjl/badwolf'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'
Plug 'yggdroot/indentline'

call plug#end()

set nocompatible
filetype plugin indent on

syntax on
syntax enable

scriptencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

set hlsearch
set incsearch

set number
set relativenumber

set backspace=indent,eol,start

set ruler
set cursorline

set showcmd
set ttyfast

set tabstop=4
set softtabstop=4
set expandtab
set smarttab
set shiftwidth=4
set autoindent
set smartindent

set linebreak
set list
set listchars=eol:¬,tab:▸\ ,trail:·,extends:>,precedes:<
set laststatus=2
set nobackup
set noswapfile

set splitbelow
set splitright

let mapleader=','

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

nnoremap <Leader>q :bp<bar>sp<bar>bn<bar>bd<CR>
nnoremap <Leader>n :bn<CR>
nnoremap <Leader>p :bp<CR>
nnoremap <Leader>d :bd<CR>
inoremap jj <esc>

runtime macros/matchit.vim

set autoread

set magic

if (has("termguicolors"))
    set termguicolors
endif

if has('unix')
    let g:os = substitute(system('uname'), '\n', '', '')
    if has('mac')
        let g:python_host_prog='/usr/local/bin/python2'
        let g:python3_host_prog='/usr/local/bin/python3'
    elseif g:os == 'Linux' 
        let g:python_host_prog='/usr/bin/python2'
        let g:python3_host_prog='/usr/bin/python3'
    endif
endif

set background=dark
colorscheme badwolf

set hidden
set showtabline=2

let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1

let g:pymode_python='python3'
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=0
let g:pymode_syntax_all=1
let g:pymode_indent=1
let g:pymode_run=1
let g:pymode_folding=0
let g:pymode_lint=0
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_regenerate_on_write=0

let g:ale_sign_column_always=1

let g:gitgutter_max_signs = 1000

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:gutentags_enabled=1
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.xhtml', '*.xml']
let g:gutentags_cache_dir = '~/.config/gutentags'

