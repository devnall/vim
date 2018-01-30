" .vimrc - vim configuration file
"
" Maintainer: Drew Nall <devnall@gmail.com>
" Last updated: January 25, 2016

set nocompatible            " be iMproved, required
filetype off                " required

" Set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" See the Vundle readme for different supported plugin formats
" Keep plugin calls between vundle#begin/end

" Github repo bundles

" vim-scripts repos

" Non-Github repos

" All of your Vundle plugins must be added before the following line
call vundle#end()           " required
filetype plugin indent on   " required

"
" Formatting
set fo+=o                   " Insert current comment leader after hitting 'o' or 'O' in Normal mode
set fo-=r                   " Do not automatically insert a comment leader after an enter
set fo-=t                   " Do not auto-wrap text using textwidth (doesn't apply to comments)

set nowrap                  " Don't wrap lines
set textwidth=0             " Don't wrap lines by default
set wildmenu                " Show menu of tab complete expansions
set wildmode=list:longest,full  " At the CLI, complete longest common string, then list alternatives
set backspace=indent,eol,start  " Allow backspacing over everything in Insert mode
set tabstop=2               " Set the default tabstop
set softtabstop=2           " Set the default soft tabstop
set shiftwidth=2            " Set the default shift width for indents
set expandtab               " Make tabs into spaces (set by tabstop)
set smarttab                " Smarter tab levels
set autoindent              " Indent newline to same level as previous line
set cindent                 " Enable C program indenting automatically
set cinoptions=:s,ps,ts,cs   
set cinwords=if,else,while,do,for,switch,case
set hlsearch                " Highlight search results

syntax enable               " Enable syntax highlighting

" Turn off backups and swap files
set nobackup                " Don't backup files
set nowritebackup           " Don't write backup files either
set noswapfile              " Don't create swap files

" Visual
set number                  " Turn on line numbers
set showmatch               " Show matching brackets
set matchtime=5             " Bracket blinking
set visualbell              " Turn on visual bell
set noerrorbells            " No noises
set laststatus=2            " Always show the statusline
set ruler                   " Show the cursor position
set showcmd                 " Display incomplete commands
set shortmess=atI           " Shorten messages
set nolist                  " Display unprintable characters
set listchars=tab:·\ ,eol:¶,trail:·,extends:»,precedes:«        " Unprintable char mappings

" Folding
set foldenable              " Turn on folding
set foldmethod=marker       " Fold on the marker
set foldlevel=100           " Don't autofold anything (can still fold manually)
set foldopen=block,hor,mark,percent,quickfix,tag  " Define movements which open folds

" Lots of terminal emulators handle the mouse just fine, so find out if it's
" supported and, if so, enable it. Also, hide mouse when not using it.
if has ('mouse')
  set mouse=a
  set mousehide
endif

set splitbelow              " Open new splits below current pane
set splitright              " Open new splits to the right of current pane

set title                   " Set the terminal title

set clipboard=unnamed
