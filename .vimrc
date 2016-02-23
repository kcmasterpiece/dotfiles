set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'matze/vim-move'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-dispatch'
Plugin 'chrisbra/csv.vim'
Plugin 'benmills/vimux'
Bundle 'chrisgillis/vim-bootstrap3-snippets' 
" " The following are examples of different formats supported.
" " Keep Plugin commands between vundle#begin/end.
" " plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}
"
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
":PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line




"execute pathogen#infect()
set relativenumber
set term=xterm-256color
set termencoding=utf-8
set number
set autoindent
set mouse=a
set backspace=2
filetype plugin indent on
syntax on
colorscheme onedark

"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup

augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set encoding=utf-8
set shiftwidth=4 tabstop=4

let g:Powerline_symbols = 'fancy'
set nocompatible   " Disable vi-compatibility
set guifont=Consolas\ for\ Powerline
source ~/.local/lib/python2.7/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2


let $BASH_ENV = "~/.bash_aliases"

"set leader key
let mapleader = "\<Space>"

" Remappings
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j 
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
nnoremap <Leader>e $
nnoremap <Leader>f ^
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>DC :DeleteColumn<CR>
autocmd FileType cs nnoremap <buffer> <Leader>g :OmniSharpGotoDefinition<CR>
" vim-move
let g:move_key_modifier = 'C'


let g:UltiSnipsExpandTrigger="<C-h>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"




" NERDTree config
" Open nerdtree if vim is opened by itself
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close nerdtree if quiting with just nerdtree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Super tab settings
let g:SuperTabDefaultCompletionType = 'context'
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
let g:SuperTabClosePreviewOnPopupClose = 1

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"for fixing bg color in tmux
set t_ut=
