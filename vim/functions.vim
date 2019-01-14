function! MakeLink()
endfunc

function! SaveFileToNotes()
  let l:filename = getline(1)
  execute 'write ~/iCloud/vimwiki/drafts/'.l:filename.'.md'
  set filetype=vimwiki
endfunction
