let g:ale_lint_on_text_changed = 'never'

let g:pandoc#keyboard#use_default_mappings=1 

let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" Neosnippet
let g:neosnippet#disable_runtime_snippets = {
        \   '_' : 1,
        \ }
let g:neosnippet#snippets_directory = '~/.vim/plugged/vim-snippets/snippets'

" Deoplete
call deoplete#custom#option({
      \ 'smart_case': v:true,
      \ 'on_insert_enter': v:false,
      \ 'on_text_changed_i': v:false,
      \ })

" Startify
let g:startify_bookmarks = ['~/.vimrc', '~/Documents/Desktop/Rails', '~/Documents/Papers']

let g:startify_lists = [
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ { 'type': 'files',     'header': ['   MRU']            },
          \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'commands',  'header': ['   Commands']       },
          \ ]


let wiki_1 = {}
let wiki_1.path = '~/iCloud/vimwiki'
let wiki_1.syntax = 'markdown'
let wiki_1.ext = '.md'

let wiki_2 = {}
let wiki_2.path = '~/schoolwiki'
let wiki_2.index = 'main'
let wiki_2.syntax = 'markdown'
let wiki_2.ext = '.md'

let g:vimwiki_list = [wiki_1, wiki_2]

" Goyo

" function! s:doThing()
"   silent !tmux set status off
" endfunction

" autocmd! User GoyoEnter nested call <SID>DoThing()

" autocmd! User GoyoEnter nested silent !tmux set status off
" autocmd! User GoyoLeave nested silent !tmux set status on
"

" Instant markdown
let g:instant_markdown_autostart = 0

" Auto writes a file when following a link in vimwiki
let g:vim_markdown_autowrite = 1

" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

let g:ranger_replace_netrw = 1

let g:pencil#autoformat_blacklist = [
        \ 'markdownCode',
        \ 'markdownUrl',
        \ 'markdownIdDeclaration',
        \ 'markdownLinkDelimiter',
        \ 'markdownHighlight[A-Za-z0-9]+',
        \ 'mkdCode',
        \ 'mkdIndentCode',
        \ 'markdownFencedCodeBlock',
        \ 'markdownInlineCode',
        \ 'mmdTable[A-Za-z0-9]*',
        \ 'txtCode',
        \ 'texAbstract',
        \ 'texBeginEndName',
        \ 'texDelimiter',
        \ 'texDocType',
        \ 'texInputFile',
        \ 'texMath',
        \ 'texRefZone',
        \ 'texSection$',
        \ 'texStatement',
        \ 'texTitle',
        \ ]

let g:nv_search_paths = ['~/iCloud/vimwiki', './notes.md']

" String. Controls how new note window is created.
let g:nv_create_note_window = 'edit'

" Boolean. If set, will truncate each path element to a single character. If
" you have colons in your pathname, this will fail. Not set by default.
let g:nv_use_short_pathnames = 1

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit',
  \ 'ctrl-y': {lines -> setreg('*', join(lines, "\n"))}}
