" 启用 vim-lsp（不需要额外命令，runtimepath 已包含）
" 设置 LSP 快捷键
nmap <silent> gd <plug>(lsp-definition)          " 跳转到定义
nmap <silent> gr <plug>(lsp-references)          " 查找引用
nmap <silent> gi <plug>(lsp-implementation)      " 跳转到实现
nmap <silent> gt <plug>(lsp-type-definition)     " 跳转到类型定义
nmap <silent> K  <plug>(lsp-hover)               " 显示文档
nmap <silent> <leader>rn <plug>(lsp-rename)      " 重命名（需先按 leader 键）

" 注册 clangd 作为 C/C++ 语言服务器
if executable('clangd')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'clangd',
        \ 'cmd': {server_info->['clangd']},
        \ 'allowlist': ['c', 'cpp', 'objc', 'objcpp'],
        \ })
else
    echo "Warning: clangd not found in PATH. Please install or specify full path."
endif
