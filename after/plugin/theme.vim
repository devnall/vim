colorscheme solarized

if has('gui_running')
  set transparency=0
  set antialias
  color ir_black+
else
  color solarized
endif

" vim-airline statusline config
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_detect_crypt=1
let g:airline_detect_iminsert=0
let g:airline_inactive_collapse=1
"let g:airline_theme='papercolor'
let g:airline_powerline_fonts=1
"let g:airline#extenstions#syntastic#enabled=1
"let g:airline#extensions#whitespace#show_message = 1
let g:airline_theme='oceanicnext'

