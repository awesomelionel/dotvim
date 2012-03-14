 "Vimrc file for Awesomelionel. Modify/Steal as you please.
"-----PATHOGEN MOD----"
"Must always load pathogen first"
call pathogen#infect()

set nocompatible 				" Don't care about vi
syntax on 						" Switch on syntax highlighting
filetype off                	" Set filetype stuff to on
filetype plugin indent on

"Settings
let mapleader = ","
let maplocalleader = "\\"

" Presentation Settings
set number						" Set Line numbering
set tabstop=4					" Tabstops are 4 spaces
set shiftwidth=4				" Number of spaces for indent	
set nowrap						" Do not wrap words (view) 
set textwidth=0 				" Do not wrap word (insert)
set showcmd						" Show the current command in the lower right corner
set showmode					" Show the current mode
set showmatch 					" Show matching brackets.
set ruler						" Line and column number of the cursor positions
set visualbell					" use visual bell instead of beeps
set wildmenu					" Make the command-line completion better
set scrolloff=8 				" Keep the cursor 8 lines from the bottom when scolling
set linespace=3					" Larger Line Height
set go-=T						" Hides MacVim toolbar

" Behaviours
"au FocusLost * :wa				" This means whenever Vim loses focus, it saves the files in the buffer
set history=100					" Keep some stuff in the history
set nobackup					" Stop Vim making back up files
set noswapfile

" Search Settings
set incsearch					" Incrementally match the search
set hlsearch					" Enable search highlighting
set ignorecase					" set the search scan so that it ignores case when the search is all lower
set smartcase					" case but recognizes uppercase if it's specified

" KeyBindings
"Clear search when you press ,/
nmap <leader>/ :nohlsearch<CR>

"Change window key remap
nmap <leader>w <C-w>w 
noremap <silent> <C-Down> <C-W>j
noremap <silent> <C-Up> <C-W>k
noremap <silent> <C-Left> <C-W>h
noremap <silent> <C-Right> <C-W>l

" Edit the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" Sparkup
let g:sparkup=' '
let g:sparkupExecuteMapping='<D-e>'

" NerdTree
nmap ,nt :NERDTreeToggle
"let NERDTreeShowHidden=1
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Nerdcommenter
nmap <leader>, :call NERDComment(0, "invert")<CR>
vmap <leader>, :call NERDComment(0, "invert")<CR>

" GUI and Colorscheme
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


