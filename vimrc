""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32")
	set rtp+=~/vimfiles/bundle/Vundle.vim
else
	set rtp+=~/.vim/bundle/Vundle.vim
endif
call vundle#begin()

Plugin 'ctrlp.vim'
Plugin 'scrooloose/nerdtree'

call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp.vim
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_root_markers = ['BLADE_ROOT']
let g:ctrlp_clear_cache_on_exit = 0

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Get out of VI's compatible mode
set nocp

"Show the cursor position on the status bar
set ruler

"Enable filetype plugin
filetype plugin on
filetype indent on

"Turn backup off
set nobackup

"Set file encodings
set fileencodings=utf-8,gbk
set encoding=utf-8

"Set auto indent
set autoindent

"Set the directory of swap file
if has("win32")
    set dir=%temp%
else
    set dir=/tmp
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax on

"Set color scheme
if has("win32")
    colorscheme slate
endif

" set font
if has("win32")
    set gfn=Bitstream_Vera_Sans_Mono:h10
else
    set gfn=Bitstream\ Vera\ Sans\ Mono\ 10
endif

"
if has("gui")
    winsize 115 40
    winpos 200 100
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VIM userinterface
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show line number
set number

"Set backspace
set backspace=eol,start,indent

"Allow the cursor move to previouse/next line
set whichwrap=b,s,<,>,[,]

"Ignore case when searching
set ignorecase

"Show dynamically searching
set incsearch

"Highlight search matches
set hlsearch

"Use shift to select text
set keymodel=startsel,stopsel

"Show enhanced command completion
set wildmenu

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set the space of tab
set tabstop=4

"Set the space of indent
set shiftwidth=4

"Set how to wrap for long lines
set linebreak

"Support line break for Asian characters
set fo+=mB

"Use space instead of tab
set expandtab

"Set match pair form
set matchpairs+=<:>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Development
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Show matching brackets
set showmatch

"Set automatic indent for c program
set cin
set cino=:0g0p0t0(sus


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Set map leader
let mapleader="'"

"Split the window vertically
map wv <C-W>v

"Split the window horizontally
map ws <C-W>s

"Move the cursor to the window below the current
map wj <C-W>j

"Move the cursor to the window above the current one
map wk <C-W>k

"Move the cursor to the window left of the current one
map wh <C-W>h

"Move the cursor to the window right of the current one
map wl <C-W>l

"Close the current window
map wc <C-W>c

"Open Nerd Tree 
map nto :NERDTreeToggle<CR>

"Close Nerd Tree
map ntc :NERDTreeClose<CR>
augroup filetype
    autocmd! BufRead,BufNewFile BUILD set filetype=blade
augroup end

