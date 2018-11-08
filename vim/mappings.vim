map <Leader> <Plug>(easymotion-prefix)

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
" nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>s :Startify<cr>
map <Leader>g :Goyo<cr>
map <Leader>m :!tmux set status<cr><cr>
map <Leader>a :AutoSaveToggle<cr>
map <Leader>w :call ToggleWordProcessorMode()<cr>
map <Leader>r :source ~/.config/nvim/init.vim<cr>
map <Leader>z 1z=
map <Leader>d :Rg<cr>

" <leader>l redraws the screen and removes any search highlighting.
nnoremap <silent> <leader>l :nohl<CR>

"" Git
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gd :Gvdiff<CR>
noremap <Leader>gr :Gremove<CR>

" Split movement
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" nvim terminal mode mappings
if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <M-[> <Esc>
  tnoremap <C-v><Esc> <Esc>
endif

nnoremap <silent> <Leader><Up> :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader><Down> :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <Leader><Right> :exe "vertical resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> <Leader><Left> :exe "vertical resize " . (winwidth(0) * 2/3)<CR>

" fzf
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>A :Windows<CR>

" Titlecase
nmap <leader>t <Plug>Titlecase
vmap <leader>t <Plug>Titlecase
nmap <leader>gT <Plug>TitlecaseLine
map gt :tabn<cr>

" Close current buffer
map <leader>bd :Bclose<cr>
"
" " Close all buffers
map <leader>ba :1,1000 bd!<cr>"

" Change current directory to the directory of open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT
"
" " Close all the buffers
map <leader>ba :bufdo bd<cr>"

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

" Change most recent typo
imap <c-f> <c-g>u<Esc>[s1z=`]a<c-g>u
nmap <c-f> [s1z=<c-o>

" Neosnippet plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <expr><TAB>
 \ pumvisible() ? "\<C-n>" :
 \ neosnippet#expandable_or_jumpable() ?
 \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" imap <expr><CR> neosnippet#expandable() ? "\<Plug>(neosnippet_expand)" : pumvisible() ?
" \ "\<C-y>" : "\<CR>"

" inoremap <expr><ESC> pumvisible() ? deoplete#mappings#close_popup() : "\<ESC>"

" Move out of surroundings (doesn't work for empty surroundings and quotation
" marks)
inoremap <C-e> <C-o>A

" Insert mode commentary
inoremap <C-d> <C-o>:Commentary<CR>
