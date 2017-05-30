execute pathogen#infect()
set relativenumber
set number
set autoindent
set mouse=a
set backspace=2
filetype plugin indent on
syntax on
filetype plugin on
colorscheme onedark

augroup reload_vimrc " {
	autocmd!
	autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set encoding=utf-8
set shiftwidth=4 tabstop=4

" vimrc config specifically for osx 
if has("macunix")
	let g:Powerline_symbols = 'fancy'
	set guifont=Fira\ Mono\ for\ Powerline
	source ~/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/plugin/powerline.vim
	"Super tab settings
	let g:SuperTabDefaultCompletionType = 'context'
	let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
	let g:SuperTabDefaultCompletionTypeDiscovery = ["&omnifunc:<c-x><c-o>","&completefunc:<c-x><c-n>"]
	let g:SuperTabClosePreviewOnPopupClose = 1
endif
set nocompatible   " Disable vi-compatibility
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
nnoremap <Leader>v :VimuxRunLastCommand<CR>
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>DC :DeleteColumn<CR>
vmap <Leader>y "+y
autocmd FileType cs nnoremap <buffer> <Leader>g :OmniSharpGotoDefinition<CR>

" vim-move
let g:move_key_modifier = 'C'


let g:UltiSnipsExpandTrigger="<C-h>"
let g:UltiSnipsJumpForwardTrigger="<C-j>"
let g:UltiSnipsJumpBackwardTrigger="<C-k>"


autocmd FileType cs setlocal omnifunc=OmniSharp#Complete


" NERDTree config
" Open nerdtree if vim is opened by itself
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Close nerdtree if quiting with just nerdtree open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


