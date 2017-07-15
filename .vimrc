" Benny 7/13/2017
" Minimal .vimrc

" Syntax highlighting
syntax enable

" Loads language specific indentation files
filetype indent on 

" Shows line numbers
set nu

" When opening a new line, keep same indent as line you're currently on
set autoindent

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Set tab width to four when in visual mode
set tabstop=4

" Number of spaces in tab when editing
set softtabstop=4

" Turns tabs into spaces
set expandtab

" Shows the last command entered
set showcmd

" Highlight current line
set cursorline

" Autocompletes for command menu
set wildmenu

" Highlight matching paranthesis
set showmatch

" Search as characters are entered and highlight matches
set incsearch
set hlsearch 

" Prevents from going back to beginning of line
set nostartofline

" Always display status line, even if only one window is displayed
set laststatus=2

" Display cursor position in the status line of screen
set ruler



