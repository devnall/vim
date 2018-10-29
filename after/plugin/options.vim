" make vim splits act like tmux splits
set splitright
set splitbelow

" enable folding
set foldmethod=indent
set foldlevel=99

" PEP8 specified indention
" I think this should move to ftype plugin?
"au BufNewFile,BufRead *.py
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix
" flag unnecessary whitespace
"au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

