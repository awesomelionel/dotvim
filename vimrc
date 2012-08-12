"-----PATHOGEN MOD----"
"Must always load pathogen first"
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

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
set hidden 						" Set Hidden for LustyExplorer
set backspace=indent,eol,start
" Behaviours
"au FocusLost * :wa				" This means whenever Vim loses focus, it saves the files in the buffer
set history=100					" Keep some stuff in the history
set nobackup					" Stop Vim making back up files
set noswapfile
set clipboard=unnamed			" Anything copied will be in the clipboard
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
noremap <silent> <C-j> <C-W>j
noremap <silent> <C-k> <C-W>k
noremap <silent> <C-h> <C-W>h
noremap <silent> <C-l> <C-W>l

" Edit the vimrc file
nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :so $MYVIMRC<CR>

" Sparkup
let g:sparkup=' '
let g:sparkupExecuteMapping='<D-e>'

" NerdTree
nmap ,nt :NERDTreeToggle<CR>
let g:NERDTreeDirArrows=0
"let NERDTreeShowHidden=1
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Nerdcommenter
nmap <leader>, :call NERDComment(0, "invert")<CR>
vmap <leader>, :call NERDComment(0, "invert")<CR>

" Auto set filetype for PHP.HTML
au BufRead *.php set ft=php.html
au BufNewFile *.php set ft=php.html

" Surround : Plugin keybinding
let g:surround_37 = "<% \r %>" " press % 
let g:surround_61 = "<%= \r %>" " press = 
autocmd FileType php let b:surround_45 = "<?php \r ?>" "press - 

" LustyJuggler suppress warning
let g:LustyJugglerSuppressRubyWarning=1

" GUI and Colorscheme
if has("gui_running")
	set guifont=Monaco:h12
	colorscheme desert
	winpos 0 0
	winsize 190 45

	"background=light
	"if !exists("g:vimrcloaded")
		"winpos 0 0
		"if ! &diff
			"winsize 130 90
		"else
			"winsize 400 90
		"endif
		"let g:vimrcloaded = 1
	"endif
else	
	colorscheme solarized
	let &t_SI = "\<Esc>]50;CursorShape=1\x7"
	let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	if exists('$TMUX')
		let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
		let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
	else
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
endif

:nohls

" use aesthetic middle of screen for "zz"
nnoremap <silent> zz :exec "normal! zz" . float2nr(winheight(0)*0.1) . "\<Lt>C-E>"<CR>


