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
Plugin 'PeterRincker/vim-argumentative'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'ervandew/supertab'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/Tabmerge'
Plugin 'matze/vim-move'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'danro/rename.vim'
Plugin 'tmhedberg/matchit'
Plugin 'tpope/vim-dispatch'
Plugin 'chrisbra/csv.vim'
Plugin 'benmills/vimux'
Plugin 'sjl/vitality.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'tpope/vim-fugitive'
Bundle 'chrisgillis/vim-bootstrap3-snippets' 
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
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
"set guifont=Droid\ Sans\ Mono\ for\ Powerline
source ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
set laststatus=2


let $BASH_ENV = "~/.bash_aliases"

"set leader key
let mapleader = "\<Space>"

" Remappings
vnoremap <Leader>y :w !pbcopy<CR><CR>

" Map leader h,j,k,l to move to panes in those directions
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j 
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" Map alt-Left, Right arrows to move to left or right tab
nnoremap <M-Left> gT
nnoremap <M-Right> gt

nnoremap <Leader>e $
nnoremap <Leader>f ^

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>DC :DeleteColumn<CR>

nnoremap <Leader>vv :VimuxRunCommand(" " . expand('%'))<C-Left><C-Left><C-Left><Left>
nnoremap <Leader>v :VimuxRunLastCommand<CR>
autocmd FileType cs nnoremap <buffer> <Leader>g :OmniSharpGotoDefinition<CR>
" vim-move
let g:move_key_modifier = 'C'


let g:UltiSnipsExpandTrigger="<C-h>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"

" Vitality settings for fixing things in iTerm2/Tmux
" see :help vitality.txt for settings
let g:vitality_fix_cursor = 1
let g:vitality_normal_cursor = 0
let g:vitality_insert_cursor = 0
let g:vitality_fix_focus = 1
" this should only be set in OS X
let g:vitality_always_assume_iterm = 1

"syntastic recommended settings
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree config
" Open nerdtree if vim is opened by itself
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close nerdtree if quiting with just nerdtree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Super tab settings
"let g:SuperTabDefaultCompletionType = 'context'
"let g:SuperTabContextDefaultCompletionType = '<c-x><c-o>'
"let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
"let g:SuperTabClosePreviewOnPopupClose = 1

let &t_ti.="\e[1 q"
let &t_SI.="\e[5 q"
let &t_EI.="\e[1 q"
let &t_te.="\e[0 q"

"for fixing bg color in tmux
set t_ut=

