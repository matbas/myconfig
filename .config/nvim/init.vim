call plug#begin('~/.config/nvim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'crusoexia/vim-monokai'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ervandew/supertab'
Plug 'itchyny/lightline.vim'
Plug 'mgee/lightline-bufferline'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'python-mode/python-mode'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-vinegar'
Plug 'w0rp/ale'
Plug 'yggdroot/indentline'
Plug 'ludovicchabant/vim-gutentags'

call plug#end()

set nocompatible
filetype plugin indent on

syntax on
syntax enable

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
set listchars=eol:¬,tab:··,trail:·,extends:>,precedes:<,space:·
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
tnoremap <Esc> <C-\><C-n>

set encoding=utf-8
set fileencoding=utf-8
set termencoding=utf-8

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
        let g:python3_host_prog='/Users/matbas/miniconda3/bin/python'
    elseif g:os == 'Linux' 
        if substitute(system('uname -o'), '\n', '', '') == 'Android'
            let g:python3_host_prog='/data/data/com.termux/files/usr/bin/python'
            let g:gitgutter_sh='sh'
            let g:gitgutter_sign_removed='–'
        endif
    endif
endif


set background=dark
let g:monokai_term_italic = 1
colorscheme monokai

set hidden
set showtabline=2

let g:lightline = { 'colorscheme': 'powerline', }
let g:lightline.tabline = {'left': [['buffers']], 'right':[['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type = {'buffers': 'tabsel'}

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

let g:ctrlp_map = '<C-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:gutentags_enabled=1
let g:gutentags_ctags_exclude = ['*.css', '*.html', '*.xhtml', '*.xml']
let g:gutentags_cache_dir = '~/.config/nvim/gutentags'
