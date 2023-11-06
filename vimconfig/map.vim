" 窗口移动快捷键
noremap <TAB>w <C-w>w
noremap <TAB>W <C-w>w
noremap <TAB><left> <C-w><left>
noremap <TAB><right> <C-w><right>
noremap <TAB><up> <C-w><up>
noremap <TAB><down> <C-w><down>

" 使用方向键切换buffer
noremap <Leader><left> :bp<CR>
noremap <Leader><right> :bn<CR>

" 使用方括号切换tab
noremap <Leader>] :tabnext<CR>
noremap <Leader>[ :tabprevious<CR>

" 使用 \ + s 保存, \ + q 退出
noremap <Leader>s :wa<CR>
noremap <Leader>q :qa<CR>
" noremap q :qa<CR>
