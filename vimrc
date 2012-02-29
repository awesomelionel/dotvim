" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.

" -----PATHOGEN MOD--------
"  ------------------- "
call pathogen#infect()

set nocompatible

" Set filetype stuff to on
filetype off
filetype plugin on
filetype indent on

"Set Line numbering
set number

" Tabstops are 4 spaces
set tabstop=4
set shiftwidth=4

" set the search scan to wrap lines
set wrapscan
"This means whenever Vim loses focus, it saves the files in the buffer
"au FocusLost * :wa

" set the search scan so that it ignores case when the search is all lower
" case but recognizes uppercase if it's specified
set ignorecase
set smartcase

" Show the current command in the lower right corner
set showcmd

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" When the page starts to scroll, keep the cursor 8 lines from the top and 8
" lines from the bottom
set scrolloff=8

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" Keep some stuff in the history
set history=100

" Make the command-line completion better
set wildmenu

"Stop Vim making back up files
set nobackup
set noswapfile

"Clear search when you press ,/
nmap <silent> ,/ :nohlsearch<CR>

"Change window key remap
nmap <silent> ,w <C-w>w 

"Larger Line Height
set linespace=3

"Hides MacVim toolbar
set go-=T

" Edit the vimrc file
nmap <silent> ,ev :e $MYVIMRC<CR>
nmap <silent> ,sv :so $MYVIMRC<CR>

if has("gui_running")
	set guifont=Monaco:h12
	colorscheme desert
	if !exists("g:vimrcloaded")
		winpos 0 0
		if ! &diff
			winsize 130 90
		else
			winsize 227 90
		endif
		let g:vimrcloaded = 1
	endif
endif
:nohls

"--------------------------
"------SPARKUP MOD---------
"--------------------------
let g:sparkup=' '
let g:sparkupExecuteMapping='<D-e>'

"--------------------------
"------NERD TREE-----------
"-------------------------
nmap ,nt :NERDTreeToggle

"let NERDTreeShowHidden=1

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

"--------------------------
"-----GUNDO----------------
"--------------------------
nnoremap <F5> :GundoToggle<CR>
