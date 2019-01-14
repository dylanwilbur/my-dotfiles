" Enable terminal colors
" let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
" let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
" set termguicolors
set t_Co=256

" Enable syntax highlighting
syntax on

" Set color scheme
set background=dark
" colorscheme wal
" colorscheme wal
" set background=light
" colorscheme solarized

" Disable cursor line
set nocursorline

" let s:hidden_all = 0
" function! ToggleHiddenAll()
"     if s:hidden_all  == 0
"         let s:hidden_all = 1
"         set noshowmode
"         set noruler
"         set laststatus=0
"         set noshowcmd
"         silent! call lightline#disable()
"     else
"         let s:hidden_all = 0
"         set showmode
"         set ruler
"         set laststatus=2
"         set showcmd
"         silent! call lightline#enable()
"     endif
" endfunction

" silent! call ToggleHiddenAll()
" nnoremap <leader><S-h> :call ToggleHiddenAll()<CR>


" hi vertsplit ctermfg=238 ctermbg=235
" hi LineNr ctermfg=237
" hi StatusLine ctermfg=235 ctermbg=245
" hi StatusLineNC ctermfg=235 ctermbg=237
" hi Search ctermbg=58 ctermfg=15
" hi Default ctermfg=1
" hi clear SignColumn
" hi SignColumn ctermbg=235
" hi GitGutterAdd ctermbg=235 ctermfg=245
" hi GitGutterChange ctermbg=235 ctermfg=245
" hi GitGutterDelete ctermbg=235 ctermfg=245
" hi GitGutterChangeDelete ctermbg=235 ctermfg=245
" hi EndOfBuffer ctermfg=237 ctermbg=235

" set statusline=%=%P\ %f\ %m
" set fillchars=vert:\ ,stl:\ ,stlnc:\ 
" set laststatus=2
" set noshowmode

let g:lightline = {
      \ 'colorscheme': 'wal',
      \ }

" Themes

let g:thematic#defaults = {
\ 'background': 'dark',
\ 'colorscheme': 'onedark'
\ }

let g:thematic#themes = {
\ 'bubblegum'  : { 'typeface': 'Menlo',
\                  'font-size': 18,
\                  'transparency': 10,
\                  'linespace': 2,
\                },
\ 'pencil_dark' :{ 'colorscheme': 'pencil',
\                  'background': 'dark',
\                  'airline-theme': 'badwolf',
\                  'ruler': 1,
\                  'laststatus': 0,
\                  'typeface': 'Source Code Pro Light',
\                  'font-size': 20,
\                  'transparency': 10,
\                  'linespace': 8,
\                },
\ 'pencil_lite' :{ 'colorscheme': 'pencil',
\                  'background': 'light',
\                  'airline-theme': 'light',
\                  'laststatus': 0,
\                  'typeface': 'Source Code Pro',
\                  'transparency': 0,
\                  'font-size': 20,
\                  'linespace': 6,
\                },
\ 'onedark'     :{
\                  'colorscheme': 'onedark',
\                  'background': 'dark',
\                },
\ 'solarized_light' :{
\                  'colorscheme': 'solarized',
\                  'background': 'light',
\                },
\ 'forest'      :{
\                  'colorscheme': 'sacredforest',
\                  'background': 'dark',
\                },
\ 'flattened-light' :{
\                  'colorscheme': 'flattened-light',
\                  'background': 'light',
\                },
\ 'wal'          : {
\                  'colorscheme': 'wal',
\                   },
\ }

