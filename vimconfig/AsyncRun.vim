" 自动打开高度为具体值的 quickfix 窗口
let g:asyncrun_open=10
" 运行前保存文件
let g:asyncrun_save=1
" 用<F9>编译
noremap <silent> <F9> :call CompileBuild()<CR>
func! CompileBuild()
    exec "w"
    if &filetype == 'c'
    ¦   exec ':AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 gcc "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)"'
    elseif &filetype == 'cpp'
    ¦   exec ':AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 g++ -O3 "$(VIM_FILEPATH)" -o "$(VIM_FILEDIR)/$(VIM_FILENOEXT)" -lpthread'
    elseif &filetype == 'go'
    ¦   exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 go build $(VIM_FILEDIR)/$(VIM_FILENOEXT)"
    endif
endfunc

" compile python
" 用<F5>运行
noremap <silent> <F5> :call CompileRun()<CR>
func! CompileRun()
    exec "w"
    if &filetype == 'c'
       exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 $(VIM_FILEDIR)/$(VIM_FILENOEXT)"
    elseif &filetype == 'cpp'
       exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 $(VIM_FILEDIR)/$(VIM_FILENOEXT)"
    elseif &filetype == 'python'
       exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 python3 $(VIM_FILEPATH)"
    elseif &filetype == 'html'
       exec ":AsyncRun -mode=term -pos=hide open $(VIM_FILEPATH)"
    elseif &filetype == 'go'
       exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 go run $(VIM_FILEPATH)"
    elseif &filetype == 'javascript'
       exec ":AsyncRun -mode=term -pos=bottom -rows=10 -focus=0 node $(VIM_FILEPATH)"
    endif
endfunc


