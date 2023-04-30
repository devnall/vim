" DiffOrig to compare the buffer to the original file on disk in a new vsplit
"command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" On tab close, focus tab to its left (right is the default)
function! CloseSomething()
  if winnr("$") == 1 && tabpagenr("$") > 1 && tabpagenr() > 1 && tabpagenr() < tabpagenr("$")
    tabclose | tabprev
  else
    q
  endif
endfunction
map <C-x> :call CloseSomething()<CR>

