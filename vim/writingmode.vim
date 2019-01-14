" Writing mode
" function! ToggleWordProcessorMode()
"     if s:enabled
"         :Goyo
"         :PencilOff
"         :Thematic onedark
"         :set nonumber
"         :set norelativenumber
"         let s:enabled = 0
"     else
"         :Goyo
"         :PencilSoft
"         :Thematic pencil_lite
"         :set number
"         :set relativenumber
"         let s:enabled = 1

"     endif
" endfunction
"
augroup markdown
    autocmd!
    autocmd Filetype markdown,pandoc,vimwiki call WriteMode()
		autocmd TextChanged,TextChangedI <buffer> silent write
    " autocmd Filetype markdown,pandoc :Goyo
augroup END


function! WriteMode()
  :Thematic pencil_lite
  " :colorscheme solarized
  " :set background=light
  :PencilSoft
  :set nonumber
  :set norelativenumber
  :set spell
  :Limelight
  :set termguicolors
  set showbreak=
 " :Goyo
endfunction



" Quit vim after goyo quit
function! s:goyo_enter()
  let b:quitting = 0
  let b:quitting_bang = 0
  autocmd QuitPre <buffer> let b:quitting = 1
  cabbrev <buffer> q! let b:quitting_bang = 1 <bar> q!
endfunction

function! s:goyo_leave()
  " Quit Vim if this is the only remaining buffer
  if b:quitting && len(filter(range(1, bufnr('$')), 'buflisted(v:val)')) == 1
    if b:quitting_bang
      qa!
    else
      qa
    endif
  endif
endfunction

autocmd! User GoyoEnter call <SID>goyo_enter()
autocmd! User GoyoLeave call <SID>goyo_leave()


