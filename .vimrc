execute pathogen#infect()
set number
set autoindent
syntax on
filetype plugin indent on
colorscheme onedark

set encoding=utf-8

set shiftwidth=4 tabstop=4

let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set guifont=Fira\ Mono\ for\ Powerline
source ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2

set shell=/bin/bash\ --rcfile\ ~/.bash_profile
