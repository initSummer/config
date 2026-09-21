"
" Author        : Summer
" Description   : nerdtree
" 
" Revision      : 
" Rev.    Date        Designer    Description
" 1.0     2023-11-06  Summer      Initial version
" 
nnoremap <space>e :NERDTreeToggle<CR>
nnoremap <space>c :NERDTreeToggle<CR>

let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
let g:NERDTreeNaturalSort = 1
" let g:NERDTreeHighlightCursorline = 1

if $SUMMER_AUTO_NERD ==# 'true'
    " Open NERDTree sidebar on startup
    autocmd VimEnter * NERDTree

    " If a file was passed (vim file.txt), move cursor back to the file window
    " so we don't start inside NERDTree
    autocmd VimEnter * if argc() > 0 | wincmd p | endif
endif
