let mapleader = ";"
let maplocalleader = "\<Space>"

filetype plugin indent on  " Load plugins according to detected filetype.
syntax on                  " Enable syntax highlighting.

" Indenting and tabs
set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines"
set expandtab                     " use spaces, not tabs
set smarttab


""
"" Whitespace
""

set tabstop=2                     " a tab is two spaces
set shiftwidth=2                  " an autoindent (with <<) is two spaces
set list                          " Show invisible characters
set backspace=indent,eol,start    " backspace through everything in insert mode
"
"

"" Searching
""

set hlsearch    " highlight matches
set incsearch   " incremental searching
set ignorecase  " searches are case insensitive...
set smartcase   " ... unless they contain at least one capital letter
"

set hidden                 " Switch between buffers without having to save first.
set laststatus  =2         " Always show statusline.
set display     =lastline  " Show as much as possible of the last line.



set ttyfast                " Faster redrawing.
set lazyredraw             " Only redraw when necessary.

set splitbelow             " Open new windows below the current window.
set splitright             " Open new windows right of the current window.

set wrapscan               " Searches wrap around end-of-file.
set report      =0         " Always report changed lines.
set synmaxcol   =200       " Only highlight the first 200 columns.

set cmdheight=2            " Set height of command line

" Yank and paste with the system clipboard
set clipboard=unnamed

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1

" Show matching brackets when text indicator is over them
set showmatch 
" " How many tenths of a second to blink when matching brackets
set mat=2"

filetype plugin on         " For instant-markdown 

au BufLeave * silent! wall " autosave on bufleave

" Line numbers
set number relativenumber

" augroup numbertoggle
"   autocmd!
"   autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
"   autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
" augroup END
"

" Tmux
autocmd BufEnter * let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
