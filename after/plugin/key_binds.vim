"SPACE as leader key
let g:mapleader="<space>"

" jj to escape insert mode
imap jj <Esc>

" CTRL+S saves
nnoremap <C-s> :w<CR>

" splits
nnoremap <C-\> :vs<CR>
"nnoremap <C--> :sp<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" tabs
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>
nnoremap th  :tabfirst<CR>
nnoremap tj  :tabnext<CR>
nnoremap tk  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap t1 1gt
nnoremap t2 2gt
nnoremap t3 3gt
nnoremap t4 4gt
nnoremap t5 5gt
nnoremap t6 6gt
nnoremap t7 7gt
nnoremap t8 8gt
nnoremap t9 9gt
nnoremap t10 10gt

" CTRL+p to open a file via fzf
if exists(':FZF')
  nnoremap <C-p> :Files<CR>
endif

" CTRL+n to open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>

" CTRL+h to highlight line and column of cursor position
nnoremap <c-H> :call ToggleCursHilite()<CR>

let g:highlight_toggle_off = 1

function! ToggleCursHilite()
  if g:highlight_toggle_off
    set cursorline
    set cursorcolumn
    highlight CursorLine cterm=NONE ctermbg=darkblue ctermfg=white
    highlight CursorColumn cterm=NONE ctermbg=darkblue ctermfg=white
    let g:highlight_toggle_off = 0
  else
    set nocursorline
    set nocursorcolumn
    highlight clear
    let g:highlight_toggle_off = 1
  endif
endfunction
