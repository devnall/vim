" SPACE as leader key
let g:mapleader="<space>"

" jj to escape insert mode
imap jj <Esc>

" CTRL+S saves
nnoremap <C-s> :w<CR>

" navigate splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" CTRL+p to open a file via fzf
if exists(':FZF')
  nnoremap <C-p> :Files<CR>
endif
