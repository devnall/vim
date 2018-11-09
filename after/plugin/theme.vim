" Enable 256-color by default in the terminal
if !has('gui_running') | set t_Co=256 | endif

"
" lightline config
set noshowmode " remove redundant --INSERT-- in statusline
let g:lightline = {
      \ 'colorscheme': 'devnall',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], 
      \             [ 'fugitive', 'readonly', 'filename' ] ]
      \ },
      \ 'separator': { 'left': '', 'right': '' },
      \ 'subseparator': { 'left': '', 'right': '' },
      \ 'component': {
      \   'lineinfo': ' %3l:%-2v',
      \   'gitsymbol': '',
      \ },
      \ 'component_function': {
      \   'readonly': 'LightlineReadonly',
      \   'fugitive': 'LightlineFugitive',
      \   'fileformat': 'LightlineFileformat',
      \   'filetype': 'LightlineFiletype',
      \   'filename': 'LightlineFilename',
      \ },
      \ }
"let g:lightline.tabline = {
"      \ 'colorscheme': 'OldHope',
"      \ 'left': [ ['tabs'] ],
"      \ 'right': [ ['close'] ]
"      \ }
let g:lightline#extensions#tabline#enabled = 2
"set showtabline=2
set guioptions-=e

" lightline functions
function! LightlineReadonly()
      return &readonly ? '' : ''
endfunction
function! LightlineFugitive()
      if exists('*fugitive#head')
            let branch = fugitive#head()
            return branch !=# '' ? ''.branch : ''
      endif
      return ''
endfunction
function! LightlineFileformat()
  return winwidth(0) > 70 ? &fileformat : ''
endfunction
function! LightlineFiletype()
  return winwidth(0) > 70 ? (&filetype !=# '' ? &filetype : 'no ft') : ''
endfunction
function! LightlineFilename()
  let filename = expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
  let modified = &modified ? ' +' : ''
  return filename . modified
endfunction

" colorscheme
set background=dark
colorscheme default
let g:solarized_termcolors=256

