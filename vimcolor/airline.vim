set t_Co=256
set laststatus=2

let g:airline_theme='fruit_punch'


let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = '⎜'
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = '⎜'
let g:airline#extensions#tabline#right_alt_sep = '|'
" let g:airline#extensions#tabline#formatter = 'default'

"Display a short path in statusline: >
let g:airline_stl_path_style = 'short'

if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif
let g:airline_symbols.branch = '⚡'
let g:airline_symbols.readonly = '⚡'
let g:airline_symbols.linenr = '⚡'
let g:airline_symbols.maxlinenr = '⚡'
let g:airline_symbols.dirty= '⚡'

let g:airline_left_sep = '▶'
let g:airline_left_alt_sep = '❯'
let g:airline_right_sep = '◀'
let g:airline_right_alt_sep = '❮'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
