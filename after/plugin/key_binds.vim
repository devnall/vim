imap jj <Esc>   " jj to escape insert mode

" navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" CTRL+p to open a file via fzf
if exists(':FZF')
  nnoremap <C-p> :FZF!<cr>
endif
