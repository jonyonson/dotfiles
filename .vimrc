" Vundle --------------------------

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " required
Plugin 'editorconfig/editorconfig-vim'
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ

" General settings ----------------

syntax on
set background=dark

set backspace=indent,eol,start

set autoindent
set smartindent
set autoread
set autowrite
set autowriteall
set clipboard=unnamedplus
set colorcolumn=81
set completeopt-=preview
set cursorline
set encoding=utf-8
set expandtab
set list
set listchars=tab:\|\ ,trail:▫
set nospell
set noswapfile
set nowrap
set noerrorbells
set novisualbell
set number
set ruler
set softtabstop=2
set tabstop=2
set textwidth=80
set title
set updatetime=100

" set relativenumber
" set formatoptions=tcqron

" store viminfo in ~/.vim/.viminfo
set viminfo+=n~/.vim/.viminfo



