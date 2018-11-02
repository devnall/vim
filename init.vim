set nocompatible          " be iMproved; required

" Vim Plug
call plug#begin('~/.vim/vendor')

if !has('nvim') && !exists('g:gui_oni') | Plug 'tpope/vim-sensible' | endif
Plug 'rstacruz/vim-opinion'
Plug 'altercation/vim-colors-solarized'
Plug 'mhartington/oceanic-next'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'tmhedberg/SimpylFold'
"Plug 'vim-scripts/indentpython.vim'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'w0rp/ale'
"Plug 'Valloric/YouCompleteMe'

call plug#end()

set rtp+=/Users/dnall/homebrew/opt/fzf
